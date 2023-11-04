//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <apex_dart/apex_dart_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) apex_dart_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ApexDartPlugin");
  apex_dart_plugin_register_with_registrar(apex_dart_registrar);
}
