.class public final Lcom/android/server/SystemConfig$PermissionEntry;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionEntry"
.end annotation


# instance fields
.field public gids:[I

.field public final name:Ljava/lang/String;

.field public perUser:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "perUser"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, name:Ljava/lang/String;

    .line 83
    iput-boolean p2, p0, perUser:Z

    .line 84
    return-void
.end method
