.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$file:Landroid/os/ParcelFileDescriptor;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$observingUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$file:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$name:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;
    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    move-result-object v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;
    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$file:Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$name:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    .line 149
    return-void
.end method
