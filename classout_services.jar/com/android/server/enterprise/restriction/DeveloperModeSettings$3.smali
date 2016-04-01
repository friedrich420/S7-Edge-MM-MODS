.class final Lcom/android/server/enterprise/restriction/DeveloperModeSettings$3;
.super Ljava/util/HashMap;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string/jumbo v0, "development_settings_enabled"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v0, "stay_on_while_plugged_in"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "adb_enabled"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "bugreport_in_power_menu"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v0, "debug_view_attributes"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v0, "wait_for_debugger"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v0, "verifier_verify_adb_installs"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v0, "wifi_display_certification_on"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "legacy_dhcp_client"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "mobile_data_always_on"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "overlay_display_devices"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method
