.class Lcom/android/server/content/SyncStorageEngine$AccountInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountInfo"
.end annotation


# instance fields
.field final accountAndUser:Landroid/accounts/AccountAndUser;

.field final authorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/accounts/AccountAndUser;)V
    .registers 3
    .param p1, "accountAndUser"    # Landroid/accounts/AccountAndUser;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, authorities:Ljava/util/HashMap;

    .line 222
    iput-object p1, p0, accountAndUser:Landroid/accounts/AccountAndUser;

    .line 223
    return-void
.end method
