.class Lcom/android/settings/notification/ServiceListing$1;
.super Landroid/database/ContentObserver;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ServiceListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ServiceListing;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/notification/ServiceListing$1;->this$0:Lcom/android/settings/notification/ServiceListing;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing$1;->this$0:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 193
    return-void
.end method
