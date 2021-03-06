# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-12-01/generated/azure_mgmt_network/module_definition'
require 'ms_rest_azure'

module Azure::Network::Mgmt::V2016_12_01
  autoload :NetworkInterfaces,                                  '2016-12-01/generated/azure_mgmt_network/network_interfaces.rb'
  autoload :ApplicationGateways,                                '2016-12-01/generated/azure_mgmt_network/application_gateways.rb'
  autoload :ExpressRouteCircuitAuthorizations,                  '2016-12-01/generated/azure_mgmt_network/express_route_circuit_authorizations.rb'
  autoload :ExpressRouteCircuitPeerings,                        '2016-12-01/generated/azure_mgmt_network/express_route_circuit_peerings.rb'
  autoload :ExpressRouteCircuits,                               '2016-12-01/generated/azure_mgmt_network/express_route_circuits.rb'
  autoload :ExpressRouteServiceProviders,                       '2016-12-01/generated/azure_mgmt_network/express_route_service_providers.rb'
  autoload :LoadBalancers,                                      '2016-12-01/generated/azure_mgmt_network/load_balancers.rb'
  autoload :NetworkSecurityGroups,                              '2016-12-01/generated/azure_mgmt_network/network_security_groups.rb'
  autoload :SecurityRules,                                      '2016-12-01/generated/azure_mgmt_network/security_rules.rb'
  autoload :NetworkWatchers,                                    '2016-12-01/generated/azure_mgmt_network/network_watchers.rb'
  autoload :PacketCaptures,                                     '2016-12-01/generated/azure_mgmt_network/packet_captures.rb'
  autoload :PublicIPAddresses,                                  '2016-12-01/generated/azure_mgmt_network/public_ipaddresses.rb'
  autoload :RouteFilters,                                       '2016-12-01/generated/azure_mgmt_network/route_filters.rb'
  autoload :RouteFilterRules,                                   '2016-12-01/generated/azure_mgmt_network/route_filter_rules.rb'
  autoload :RouteTables,                                        '2016-12-01/generated/azure_mgmt_network/route_tables.rb'
  autoload :Routes,                                             '2016-12-01/generated/azure_mgmt_network/routes.rb'
  autoload :BgpServiceCommunities,                              '2016-12-01/generated/azure_mgmt_network/bgp_service_communities.rb'
  autoload :Usages,                                             '2016-12-01/generated/azure_mgmt_network/usages.rb'
  autoload :VirtualNetworks,                                    '2016-12-01/generated/azure_mgmt_network/virtual_networks.rb'
  autoload :Subnets,                                            '2016-12-01/generated/azure_mgmt_network/subnets.rb'
  autoload :VirtualNetworkPeerings,                             '2016-12-01/generated/azure_mgmt_network/virtual_network_peerings.rb'
  autoload :VirtualNetworkGateways,                             '2016-12-01/generated/azure_mgmt_network/virtual_network_gateways.rb'
  autoload :VirtualNetworkGatewayConnections,                   '2016-12-01/generated/azure_mgmt_network/virtual_network_gateway_connections.rb'
  autoload :LocalNetworkGateways,                               '2016-12-01/generated/azure_mgmt_network/local_network_gateways.rb'
  autoload :NetworkManagementClient,                            '2016-12-01/generated/azure_mgmt_network/network_management_client.rb'

  module Models
    autoload :EffectiveRoute,                                     '2016-12-01/generated/azure_mgmt_network/models/effective_route.rb'
    autoload :Resource,                                           '2016-12-01/generated/azure_mgmt_network/models/resource.rb'
    autoload :EffectiveRouteListResult,                           '2016-12-01/generated/azure_mgmt_network/models/effective_route_list_result.rb'
    autoload :SubResource,                                        '2016-12-01/generated/azure_mgmt_network/models/sub_resource.rb'
    autoload :SecurityRuleListResult,                             '2016-12-01/generated/azure_mgmt_network/models/security_rule_list_result.rb'
    autoload :ExpressRouteCircuitRoutesTable,                     '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_routes_table.rb'
    autoload :ExpressRouteCircuitsRoutesTableListResult,          '2016-12-01/generated/azure_mgmt_network/models/express_route_circuits_routes_table_list_result.rb'
    autoload :ApplicationGatewayBackendAddress,                   '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_address.rb'
    autoload :ExpressRouteCircuitRoutesTableSummary,              '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_routes_table_summary.rb'
    autoload :ConnectionResetSharedKey,                           '2016-12-01/generated/azure_mgmt_network/models/connection_reset_shared_key.rb'
    autoload :ExpressRouteCircuitsRoutesTableSummaryListResult,   '2016-12-01/generated/azure_mgmt_network/models/express_route_circuits_routes_table_summary_list_result.rb'
    autoload :TunnelConnectionHealth,                             '2016-12-01/generated/azure_mgmt_network/models/tunnel_connection_health.rb'
    autoload :ExpressRouteCircuitListResult,                      '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_list_result.rb'
    autoload :BgpPeerStatusListResult,                            '2016-12-01/generated/azure_mgmt_network/models/bgp_peer_status_list_result.rb'
    autoload :ExpressRouteServiceProviderBandwidthsOffered,       '2016-12-01/generated/azure_mgmt_network/models/express_route_service_provider_bandwidths_offered.rb'
    autoload :VpnClientParameters,                                '2016-12-01/generated/azure_mgmt_network/models/vpn_client_parameters.rb'
    autoload :RouteFilterListResult,                              '2016-12-01/generated/azure_mgmt_network/models/route_filter_list_result.rb'
    autoload :BgpPeerStatus,                                      '2016-12-01/generated/azure_mgmt_network/models/bgp_peer_status.rb'
    autoload :ExpressRouteServiceProviderListResult,              '2016-12-01/generated/azure_mgmt_network/models/express_route_service_provider_list_result.rb'
    autoload :ApplicationGatewayConnectionDraining,               '2016-12-01/generated/azure_mgmt_network/models/application_gateway_connection_draining.rb'
    autoload :PublicIPAddressListResult,                          '2016-12-01/generated/azure_mgmt_network/models/public_ipaddress_list_result.rb'
    autoload :ApplicationGatewayBackendHealthServer,              '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_health_server.rb'
    autoload :FlowLogInformation,                                 '2016-12-01/generated/azure_mgmt_network/models/flow_log_information.rb'
    autoload :ApplicationGatewayBackendHealthPool,                '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_health_pool.rb'
    autoload :FlowLogStatusParameters,                            '2016-12-01/generated/azure_mgmt_network/models/flow_log_status_parameters.rb'
    autoload :ApplicationGatewaySku,                              '2016-12-01/generated/azure_mgmt_network/models/application_gateway_sku.rb'
    autoload :RetentionPolicyParameters,                          '2016-12-01/generated/azure_mgmt_network/models/retention_policy_parameters.rb'
    autoload :VpnClientConfiguration,                             '2016-12-01/generated/azure_mgmt_network/models/vpn_client_configuration.rb'
    autoload :TroubleshootingResult,                              '2016-12-01/generated/azure_mgmt_network/models/troubleshooting_result.rb'
    autoload :IPAddressAvailabilityResult,                        '2016-12-01/generated/azure_mgmt_network/models/ipaddress_availability_result.rb'
    autoload :TroubleshootingDetails,                             '2016-12-01/generated/azure_mgmt_network/models/troubleshooting_details.rb'
    autoload :DhcpOptions,                                        '2016-12-01/generated/azure_mgmt_network/models/dhcp_options.rb'
    autoload :LoadBalancerListResult,                             '2016-12-01/generated/azure_mgmt_network/models/load_balancer_list_result.rb'
    autoload :VirtualNetworkPeeringListResult,                    '2016-12-01/generated/azure_mgmt_network/models/virtual_network_peering_list_result.rb'
    autoload :ErrorDetails,                                       '2016-12-01/generated/azure_mgmt_network/models/error_details.rb'
    autoload :UsagesListResult,                                   '2016-12-01/generated/azure_mgmt_network/models/usages_list_result.rb'
    autoload :Error,                                              '2016-12-01/generated/azure_mgmt_network/models/error.rb'
    autoload :ApplicationGatewayWebApplicationFirewallConfiguration, '2016-12-01/generated/azure_mgmt_network/models/application_gateway_web_application_firewall_configuration.rb'
    autoload :AzureAsyncOperationResult,                          '2016-12-01/generated/azure_mgmt_network/models/azure_async_operation_result.rb'
    autoload :ApplicationGatewayListResult,                       '2016-12-01/generated/azure_mgmt_network/models/application_gateway_list_result.rb'
    autoload :EffectiveNetworkSecurityGroupAssociation,           '2016-12-01/generated/azure_mgmt_network/models/effective_network_security_group_association.rb'
    autoload :BgpServiceCommunityListResult,                      '2016-12-01/generated/azure_mgmt_network/models/bgp_service_community_list_result.rb'
    autoload :EffectiveNetworkSecurityRule,                       '2016-12-01/generated/azure_mgmt_network/models/effective_network_security_rule.rb'
    autoload :ExpressRouteCircuitPeeringConfig,                   '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_peering_config.rb'
    autoload :EffectiveNetworkSecurityGroup,                      '2016-12-01/generated/azure_mgmt_network/models/effective_network_security_group.rb'
    autoload :BGPCommunity,                                       '2016-12-01/generated/azure_mgmt_network/models/bgpcommunity.rb'
    autoload :EffectiveNetworkSecurityGroupListResult,            '2016-12-01/generated/azure_mgmt_network/models/effective_network_security_group_list_result.rb'
    autoload :RouteTableListResult,                               '2016-12-01/generated/azure_mgmt_network/models/route_table_list_result.rb'
    autoload :NetworkInterfaceDnsSettings,                        '2016-12-01/generated/azure_mgmt_network/models/network_interface_dns_settings.rb'
    autoload :ExpressRouteCircuitSku,                             '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_sku.rb'
    autoload :PublicIPAddressDnsSettings,                         '2016-12-01/generated/azure_mgmt_network/models/public_ipaddress_dns_settings.rb'
    autoload :RouteFilterRuleListResult,                          '2016-12-01/generated/azure_mgmt_network/models/route_filter_rule_list_result.rb'
    autoload :TroubleshootingRecommendedActions,                  '2016-12-01/generated/azure_mgmt_network/models/troubleshooting_recommended_actions.rb'
    autoload :ExpressRouteCircuitsArpTableListResult,             '2016-12-01/generated/azure_mgmt_network/models/express_route_circuits_arp_table_list_result.rb'
    autoload :NetworkSecurityGroupListResult,                     '2016-12-01/generated/azure_mgmt_network/models/network_security_group_list_result.rb'
    autoload :ConnectionSharedKey,                                '2016-12-01/generated/azure_mgmt_network/models/connection_shared_key.rb'
    autoload :QueryTroubleshootingParameters,                     '2016-12-01/generated/azure_mgmt_network/models/query_troubleshooting_parameters.rb'
    autoload :GatewayRouteListResult,                             '2016-12-01/generated/azure_mgmt_network/models/gateway_route_list_result.rb'
    autoload :NetworkWatcherListResult,                           '2016-12-01/generated/azure_mgmt_network/models/network_watcher_list_result.rb'
    autoload :GatewayRoute,                                       '2016-12-01/generated/azure_mgmt_network/models/gateway_route.rb'
    autoload :TopologyParameters,                                 '2016-12-01/generated/azure_mgmt_network/models/topology_parameters.rb'
    autoload :BgpSettings,                                        '2016-12-01/generated/azure_mgmt_network/models/bgp_settings.rb'
    autoload :TopologyAssociation,                                '2016-12-01/generated/azure_mgmt_network/models/topology_association.rb'
    autoload :ApplicationGatewayBackendHealth,                    '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_health.rb'
    autoload :TopologyResource,                                   '2016-12-01/generated/azure_mgmt_network/models/topology_resource.rb'
    autoload :VirtualNetworkGatewaySku,                           '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_sku.rb'
    autoload :Topology,                                           '2016-12-01/generated/azure_mgmt_network/models/topology.rb'
    autoload :AddressSpace,                                       '2016-12-01/generated/azure_mgmt_network/models/address_space.rb'
    autoload :VerificationIPFlowParameters,                       '2016-12-01/generated/azure_mgmt_network/models/verification_ipflow_parameters.rb'
    autoload :Usage,                                              '2016-12-01/generated/azure_mgmt_network/models/usage.rb'
    autoload :VerificationIPFlowResult,                           '2016-12-01/generated/azure_mgmt_network/models/verification_ipflow_result.rb'
    autoload :DnsNameAvailabilityResult,                          '2016-12-01/generated/azure_mgmt_network/models/dns_name_availability_result.rb'
    autoload :NextHopParameters,                                  '2016-12-01/generated/azure_mgmt_network/models/next_hop_parameters.rb'
    autoload :ExpressRouteCircuitStats,                           '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_stats.rb'
    autoload :NextHopResult,                                      '2016-12-01/generated/azure_mgmt_network/models/next_hop_result.rb'
    autoload :ExpressRouteCircuitPeeringListResult,               '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_peering_list_result.rb'
    autoload :SecurityGroupViewParameters,                        '2016-12-01/generated/azure_mgmt_network/models/security_group_view_parameters.rb'
    autoload :ExpressRouteCircuitArpTable,                        '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_arp_table.rb'
    autoload :NetworkInterfaceAssociation,                        '2016-12-01/generated/azure_mgmt_network/models/network_interface_association.rb'
    autoload :VirtualNetworkGatewayConnectionListResult,          '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection_list_result.rb'
    autoload :SubnetAssociation,                                  '2016-12-01/generated/azure_mgmt_network/models/subnet_association.rb'
    autoload :NetworkInterfaceListResult,                         '2016-12-01/generated/azure_mgmt_network/models/network_interface_list_result.rb'
    autoload :SecurityRuleAssociations,                           '2016-12-01/generated/azure_mgmt_network/models/security_rule_associations.rb'
    autoload :ApplicationGatewaySslPolicy,                        '2016-12-01/generated/azure_mgmt_network/models/application_gateway_ssl_policy.rb'
    autoload :SecurityGroupNetworkInterface,                      '2016-12-01/generated/azure_mgmt_network/models/security_group_network_interface.rb'
    autoload :SubnetListResult,                                   '2016-12-01/generated/azure_mgmt_network/models/subnet_list_result.rb'
    autoload :SecurityGroupViewResult,                            '2016-12-01/generated/azure_mgmt_network/models/security_group_view_result.rb'
    autoload :AuthorizationListResult,                            '2016-12-01/generated/azure_mgmt_network/models/authorization_list_result.rb'
    autoload :PacketCaptureStorageLocation,                       '2016-12-01/generated/azure_mgmt_network/models/packet_capture_storage_location.rb'
    autoload :ExpressRouteCircuitServiceProviderProperties,       '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_service_provider_properties.rb'
    autoload :PacketCaptureFilter,                                '2016-12-01/generated/azure_mgmt_network/models/packet_capture_filter.rb'
    autoload :VirtualNetworkGatewayListResult,                    '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_list_result.rb'
    autoload :PacketCaptureParameters,                            '2016-12-01/generated/azure_mgmt_network/models/packet_capture_parameters.rb'
    autoload :VirtualNetworkListResult,                           '2016-12-01/generated/azure_mgmt_network/models/virtual_network_list_result.rb'
    autoload :PacketCapture,                                      '2016-12-01/generated/azure_mgmt_network/models/packet_capture.rb'
    autoload :RouteListResult,                                    '2016-12-01/generated/azure_mgmt_network/models/route_list_result.rb'
    autoload :PacketCaptureResult,                                '2016-12-01/generated/azure_mgmt_network/models/packet_capture_result.rb'
    autoload :ApplicationGatewayBackendHealthHttpSettings,        '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_health_http_settings.rb'
    autoload :PacketCaptureListResult,                            '2016-12-01/generated/azure_mgmt_network/models/packet_capture_list_result.rb'
    autoload :LocalNetworkGatewayListResult,                      '2016-12-01/generated/azure_mgmt_network/models/local_network_gateway_list_result.rb'
    autoload :PacketCaptureQueryStatusResult,                     '2016-12-01/generated/azure_mgmt_network/models/packet_capture_query_status_result.rb'
    autoload :UsageName,                                          '2016-12-01/generated/azure_mgmt_network/models/usage_name.rb'
    autoload :TroubleshootingParameters,                          '2016-12-01/generated/azure_mgmt_network/models/troubleshooting_parameters.rb'
    autoload :ResourceNavigationLink,                             '2016-12-01/generated/azure_mgmt_network/models/resource_navigation_link.rb'
    autoload :Route,                                              '2016-12-01/generated/azure_mgmt_network/models/route.rb'
    autoload :SecurityRule,                                       '2016-12-01/generated/azure_mgmt_network/models/security_rule.rb'
    autoload :ApplicationGatewayBackendAddressPool,               '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_address_pool.rb'
    autoload :BackendAddressPool,                                 '2016-12-01/generated/azure_mgmt_network/models/backend_address_pool.rb'
    autoload :InboundNatRule,                                     '2016-12-01/generated/azure_mgmt_network/models/inbound_nat_rule.rb'
    autoload :IPConfiguration,                                    '2016-12-01/generated/azure_mgmt_network/models/ipconfiguration.rb'
    autoload :PublicIPAddress,                                    '2016-12-01/generated/azure_mgmt_network/models/public_ipaddress.rb'
    autoload :NetworkInterfaceIPConfiguration,                    '2016-12-01/generated/azure_mgmt_network/models/network_interface_ipconfiguration.rb'
    autoload :NetworkInterface,                                   '2016-12-01/generated/azure_mgmt_network/models/network_interface.rb'
    autoload :NetworkSecurityGroup,                               '2016-12-01/generated/azure_mgmt_network/models/network_security_group.rb'
    autoload :RouteTable,                                         '2016-12-01/generated/azure_mgmt_network/models/route_table.rb'
    autoload :Subnet,                                             '2016-12-01/generated/azure_mgmt_network/models/subnet.rb'
    autoload :ApplicationGatewayBackendHttpSettings,              '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_http_settings.rb'
    autoload :ApplicationGatewayIPConfiguration,                  '2016-12-01/generated/azure_mgmt_network/models/application_gateway_ipconfiguration.rb'
    autoload :ApplicationGatewayAuthenticationCertificate,        '2016-12-01/generated/azure_mgmt_network/models/application_gateway_authentication_certificate.rb'
    autoload :ApplicationGatewaySslCertificate,                   '2016-12-01/generated/azure_mgmt_network/models/application_gateway_ssl_certificate.rb'
    autoload :ApplicationGatewayFrontendIPConfiguration,          '2016-12-01/generated/azure_mgmt_network/models/application_gateway_frontend_ipconfiguration.rb'
    autoload :ApplicationGatewayFrontendPort,                     '2016-12-01/generated/azure_mgmt_network/models/application_gateway_frontend_port.rb'
    autoload :ApplicationGatewayHttpListener,                     '2016-12-01/generated/azure_mgmt_network/models/application_gateway_http_listener.rb'
    autoload :ApplicationGatewayPathRule,                         '2016-12-01/generated/azure_mgmt_network/models/application_gateway_path_rule.rb'
    autoload :ApplicationGatewayProbe,                            '2016-12-01/generated/azure_mgmt_network/models/application_gateway_probe.rb'
    autoload :ApplicationGatewayRequestRoutingRule,               '2016-12-01/generated/azure_mgmt_network/models/application_gateway_request_routing_rule.rb'
    autoload :ApplicationGatewayUrlPathMap,                       '2016-12-01/generated/azure_mgmt_network/models/application_gateway_url_path_map.rb'
    autoload :ApplicationGateway,                                 '2016-12-01/generated/azure_mgmt_network/models/application_gateway.rb'
    autoload :ExpressRouteCircuitAuthorization,                   '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_authorization.rb'
    autoload :RouteFilterRule,                                    '2016-12-01/generated/azure_mgmt_network/models/route_filter_rule.rb'
    autoload :ExpressRouteCircuitPeering,                         '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_peering.rb'
    autoload :RouteFilter,                                        '2016-12-01/generated/azure_mgmt_network/models/route_filter.rb'
    autoload :ExpressRouteCircuit,                                '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit.rb'
    autoload :ExpressRouteServiceProvider,                        '2016-12-01/generated/azure_mgmt_network/models/express_route_service_provider.rb'
    autoload :FrontendIPConfiguration,                            '2016-12-01/generated/azure_mgmt_network/models/frontend_ipconfiguration.rb'
    autoload :LoadBalancingRule,                                  '2016-12-01/generated/azure_mgmt_network/models/load_balancing_rule.rb'
    autoload :Probe,                                              '2016-12-01/generated/azure_mgmt_network/models/probe.rb'
    autoload :InboundNatPool,                                     '2016-12-01/generated/azure_mgmt_network/models/inbound_nat_pool.rb'
    autoload :OutboundNatRule,                                    '2016-12-01/generated/azure_mgmt_network/models/outbound_nat_rule.rb'
    autoload :LoadBalancer,                                       '2016-12-01/generated/azure_mgmt_network/models/load_balancer.rb'
    autoload :NetworkWatcher,                                     '2016-12-01/generated/azure_mgmt_network/models/network_watcher.rb'
    autoload :PatchRouteFilterRule,                               '2016-12-01/generated/azure_mgmt_network/models/patch_route_filter_rule.rb'
    autoload :PatchRouteFilter,                                   '2016-12-01/generated/azure_mgmt_network/models/patch_route_filter.rb'
    autoload :BgpServiceCommunity,                                '2016-12-01/generated/azure_mgmt_network/models/bgp_service_community.rb'
    autoload :VirtualNetworkPeering,                              '2016-12-01/generated/azure_mgmt_network/models/virtual_network_peering.rb'
    autoload :VirtualNetwork,                                     '2016-12-01/generated/azure_mgmt_network/models/virtual_network.rb'
    autoload :VirtualNetworkGatewayIPConfiguration,               '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_ipconfiguration.rb'
    autoload :VpnClientRootCertificate,                           '2016-12-01/generated/azure_mgmt_network/models/vpn_client_root_certificate.rb'
    autoload :VpnClientRevokedCertificate,                        '2016-12-01/generated/azure_mgmt_network/models/vpn_client_revoked_certificate.rb'
    autoload :VirtualNetworkGateway,                              '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway.rb'
    autoload :LocalNetworkGateway,                                '2016-12-01/generated/azure_mgmt_network/models/local_network_gateway.rb'
    autoload :VirtualNetworkGatewayConnection,                    '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection.rb'
    autoload :RouteNextHopType,                                   '2016-12-01/generated/azure_mgmt_network/models/route_next_hop_type.rb'
    autoload :SecurityRuleProtocol,                               '2016-12-01/generated/azure_mgmt_network/models/security_rule_protocol.rb'
    autoload :SecurityRuleAccess,                                 '2016-12-01/generated/azure_mgmt_network/models/security_rule_access.rb'
    autoload :SecurityRuleDirection,                              '2016-12-01/generated/azure_mgmt_network/models/security_rule_direction.rb'
    autoload :TransportProtocol,                                  '2016-12-01/generated/azure_mgmt_network/models/transport_protocol.rb'
    autoload :IPAllocationMethod,                                 '2016-12-01/generated/azure_mgmt_network/models/ipallocation_method.rb'
    autoload :IPVersion,                                          '2016-12-01/generated/azure_mgmt_network/models/ipversion.rb'
    autoload :ApplicationGatewayProtocol,                         '2016-12-01/generated/azure_mgmt_network/models/application_gateway_protocol.rb'
    autoload :ApplicationGatewayCookieBasedAffinity,              '2016-12-01/generated/azure_mgmt_network/models/application_gateway_cookie_based_affinity.rb'
    autoload :ApplicationGatewayBackendHealthServerHealth,        '2016-12-01/generated/azure_mgmt_network/models/application_gateway_backend_health_server_health.rb'
    autoload :ApplicationGatewaySkuName,                          '2016-12-01/generated/azure_mgmt_network/models/application_gateway_sku_name.rb'
    autoload :ApplicationGatewayTier,                             '2016-12-01/generated/azure_mgmt_network/models/application_gateway_tier.rb'
    autoload :ApplicationGatewaySslProtocol,                      '2016-12-01/generated/azure_mgmt_network/models/application_gateway_ssl_protocol.rb'
    autoload :ApplicationGatewayRequestRoutingRuleType,           '2016-12-01/generated/azure_mgmt_network/models/application_gateway_request_routing_rule_type.rb'
    autoload :ApplicationGatewayOperationalState,                 '2016-12-01/generated/azure_mgmt_network/models/application_gateway_operational_state.rb'
    autoload :ApplicationGatewayFirewallMode,                     '2016-12-01/generated/azure_mgmt_network/models/application_gateway_firewall_mode.rb'
    autoload :AuthorizationUseStatus,                             '2016-12-01/generated/azure_mgmt_network/models/authorization_use_status.rb'
    autoload :ExpressRouteCircuitPeeringAdvertisedPublicPrefixState, '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_peering_advertised_public_prefix_state.rb'
    autoload :ExpressRouteCircuitPeeringType,                     '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_peering_type.rb'
    autoload :ExpressRouteCircuitPeeringState,                    '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_peering_state.rb'
    autoload :Access,                                             '2016-12-01/generated/azure_mgmt_network/models/access.rb'
    autoload :ExpressRouteCircuitSkuTier,                         '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_sku_tier.rb'
    autoload :ExpressRouteCircuitSkuFamily,                       '2016-12-01/generated/azure_mgmt_network/models/express_route_circuit_sku_family.rb'
    autoload :ServiceProviderProvisioningState,                   '2016-12-01/generated/azure_mgmt_network/models/service_provider_provisioning_state.rb'
    autoload :LoadDistribution,                                   '2016-12-01/generated/azure_mgmt_network/models/load_distribution.rb'
    autoload :ProbeProtocol,                                      '2016-12-01/generated/azure_mgmt_network/models/probe_protocol.rb'
    autoload :NetworkOperationStatus,                             '2016-12-01/generated/azure_mgmt_network/models/network_operation_status.rb'
    autoload :EffectiveRouteSource,                               '2016-12-01/generated/azure_mgmt_network/models/effective_route_source.rb'
    autoload :EffectiveRouteState,                                '2016-12-01/generated/azure_mgmt_network/models/effective_route_state.rb'
    autoload :ProvisioningState,                                  '2016-12-01/generated/azure_mgmt_network/models/provisioning_state.rb'
    autoload :AssociationType,                                    '2016-12-01/generated/azure_mgmt_network/models/association_type.rb'
    autoload :Direction,                                          '2016-12-01/generated/azure_mgmt_network/models/direction.rb'
    autoload :Protocol,                                           '2016-12-01/generated/azure_mgmt_network/models/protocol.rb'
    autoload :NextHopType,                                        '2016-12-01/generated/azure_mgmt_network/models/next_hop_type.rb'
    autoload :PcProtocol,                                         '2016-12-01/generated/azure_mgmt_network/models/pc_protocol.rb'
    autoload :PcStatus,                                           '2016-12-01/generated/azure_mgmt_network/models/pc_status.rb'
    autoload :PcError,                                            '2016-12-01/generated/azure_mgmt_network/models/pc_error.rb'
    autoload :VirtualNetworkPeeringState,                         '2016-12-01/generated/azure_mgmt_network/models/virtual_network_peering_state.rb'
    autoload :VirtualNetworkGatewayType,                          '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_type.rb'
    autoload :VpnType,                                            '2016-12-01/generated/azure_mgmt_network/models/vpn_type.rb'
    autoload :VirtualNetworkGatewaySkuName,                       '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_sku_name.rb'
    autoload :VirtualNetworkGatewaySkuTier,                       '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_sku_tier.rb'
    autoload :BgpPeerState,                                       '2016-12-01/generated/azure_mgmt_network/models/bgp_peer_state.rb'
    autoload :ProcessorArchitecture,                              '2016-12-01/generated/azure_mgmt_network/models/processor_architecture.rb'
    autoload :VirtualNetworkGatewayConnectionStatus,              '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection_status.rb'
    autoload :VirtualNetworkGatewayConnectionType,                '2016-12-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection_type.rb'
  end
end
