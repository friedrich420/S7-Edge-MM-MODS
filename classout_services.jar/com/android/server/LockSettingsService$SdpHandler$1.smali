.class Lcom/android/server/LockSettingsService$SdpHandler$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 2873
    iput-object p1, p0, this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput-object p2, p0, val$newPassword:Ljava/lang/String;

    iput p3, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2876
    iget-object v0, p0, this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v1, p0, val$newPassword:Ljava/lang/String;

    iget v2, p0, val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LockSettingsService$SdpHandler;->setPasswordInternal(Ljava/lang/String;I)V

    .line 2877
    iget-object v0, p0, this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v0, v0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v1, p0, val$newPassword:Ljava/lang/String;

    # invokes: Lcom/android/server/LockSettingsService;->clear(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LockSettingsService;->access$1600(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V

    .line 2878
    return-void
.end method
