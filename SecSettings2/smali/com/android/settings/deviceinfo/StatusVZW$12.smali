.class Lcom/android/settings/deviceinfo/StatusVZW$12;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$2002(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1844
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # invokes: Lcom/android/settings/deviceinfo/StatusVZW;->getOemData()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StatusVZW;->access$2100(Lcom/android/settings/deviceinfo/StatusVZW;)V

    .line 1845
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 1848
    const-string v0, "Status"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$2002(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1850
    return-void
.end method
