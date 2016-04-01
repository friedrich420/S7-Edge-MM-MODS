.class Lcom/android/server/policy/sec/CombinationKeyManager$1;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V
    .registers 2

    .prologue
    .line 622
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 624
    const-string v1, ""

    const-string v2, "RestrictedInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 626
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    const-string v1, "com.sec.android.app.servicemodeapp"

    const-string v2, "com.sec.android.app.servicemodeapp.SysDump"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string/jumbo v1, "remote"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    const-string/jumbo v1, "noti"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_32} :catch_33

    .line 636
    .end local v0    # "i":Landroid/content/Intent;
    :cond_32
    :goto_32
    return-void

    .line 633
    :catch_33
    move-exception v1

    goto :goto_32
.end method
