
resource "oci_containerengine_cluster" "k8s_cluster" {
	compartment_id = "${var.compartment_ocid}"
	kubernetes_version = "v1.13.5"
	name = "k8s_cluster"
	vcn_id = "${oci_core_virtual_network.K8SVNC.id}"


	options {

		add_ons {
			is_kubernetes_dashboard_enabled = true
			is_tiller_enabled = true
		}
		service_lb_subnet_ids = ["${oci_core_subnet.LoadBalancerSubnet.id}"]
	}
}


resource "oci_containerengine_node_pool" "K8S_pool1" {
	#Required
	cluster_id = "${oci_containerengine_cluster.k8s_cluster.id}"
	compartment_id = "${var.compartment_ocid}"
  kubernetes_version = "v1.13.5"
	name = "K8S_pool1"
	node_image_name = "${var.worker_ol_image_name}"
	node_shape = "${var.k8sWorkerShape}"

	node_config_details {
    placement_configs {
      availability_domain = "${lookup(data.oci_identity_availability_domains.ads.availability_domains[0],"name")}"
      subnet_id           = "${oci_core_subnet.workerSubnet.id}"
    }

    placement_configs {
      availability_domain = "${lookup(data.oci_identity_availability_domains.ads.availability_domains[1],"name")}"
      subnet_id           = "${oci_core_subnet.workerSubnet.id}"
    }

		placement_configs {
      availability_domain = "${lookup(data.oci_identity_availability_domains.ads.availability_domains[2],"name")}"
      subnet_id           = "${oci_core_subnet.workerSubnet.id}"
    }
    size = 3
	}

#	ssh_public_key = "${var.node_pool_ssh_public_key}"
}



data "oci_containerengine_cluster_kube_config" "test_cluster_kube_config" {
  #Required
  cluster_id = oci_containerengine_cluster.k8s_cluster.id
	token_version = "1.0.0"
}

resource "local_file" "mykubeconfig" {
  content  = data.oci_containerengine_cluster_kube_config.test_cluster_kube_config.content
  filename = "./mykubeconfig"
}
