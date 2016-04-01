.class Lcom/android/server/telecom/TelecomLoaderService$1;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 209
    iget-object v2, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 210
    :try_start_9
    iget-object v3, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$700(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 211
    iget-object v3, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v3

    if-nez v3, :cond_23

    .line 212
    iget-object v3, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    # setter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v3, v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$302(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    .line 214
    :cond_23
    iget-object v3, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/IntArray;->add(I)V

    .line 215
    monitor-exit v2

    .line 223
    :cond_2d
    :goto_2d
    return-object v1

    .line 217
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_45

    .line 218
    iget-object v2, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 220
    .local v0, "smsComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2d

    .line 221
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_2d

    .line 217
    .end local v0    # "smsComponent":Landroid/content/ComponentName;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method
