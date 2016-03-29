.class Lcom/android/settings/deviceinfo/StatusVZW$11;
.super Landroid/database/ContentObserver;
.source "StatusVZW.java"


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
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1564
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1565
    const-string v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    new-instance v1, Lcom/android/settings/deviceinfo/StatusVZW$11$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/StatusVZW$11$1;-><init>(Lcom/android/settings/deviceinfo/StatusVZW$11;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1572
    return-void
.end method
