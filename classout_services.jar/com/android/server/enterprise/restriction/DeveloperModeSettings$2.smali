.class final Lcom/android/server/enterprise/restriction/DeveloperModeSettings$2;
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
    .line 107
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string/jumbo v0, "usb_audio_automatic_routing_disabled"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "anr_show_background"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "accessibility_display_daltonizer_enabled"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
