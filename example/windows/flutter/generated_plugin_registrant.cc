//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <apex_dart/apex_dart_plugin_c_api.h>
#include <crossview/cross_view_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  ApexDartPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ApexDartPluginCApi"));
  CrossViewPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("CrossViewPluginCApi"));
}
