.class final Lcom/android/server/enterprise/application/ApplicationPolicy$1;
.super Ljava/util/ArrayList;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    const-string v0, "android.permission-group.CONTACTS"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 393
    const-string v0, "android.permission-group.CALENDAR"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 394
    const-string v0, "android.permission-group.SMS"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 395
    const-string v0, "android.permission-group.STORAGE"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 396
    const-string v0, "android.permission-group.LOCATION"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 397
    const-string v0, "android.permission-group.PHONE"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 398
    const-string v0, "android.permission-group.MICROPHONE"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 399
    const-string v0, "android.permission-group.CAMERA"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 400
    const-string v0, "android.permission-group.SENSORS"

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method
