.class Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;
.super Landroid/os/Handler;
.source "CaTimeChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 145
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1011

    if-ne v3, v4, :cond_d

    .line 146
    const-string v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 168
    :cond_c
    :goto_c
    return-void

    .line 147
    :cond_d
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1012

    if-ne v3, v4, :cond_19

    .line 148
    const-string v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_c

    .line 149
    :cond_19
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1013

    if-ne v3, v4, :cond_c

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "autoCheck":Z
    :try_start_20
    iget-object v3, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_20 .. :try_end_2f} :catch_72

    move-result v3

    if-lez v3, :cond_70

    move v0, v2

    .line 159
    :goto_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Change, auto old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v3

    if-nez v3, :cond_63

    if-eq v0, v2, :cond_65

    :cond_63
    if-nez v0, :cond_6a

    .line 163
    :cond_65
    iget-object v2, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->notifyObservers()V
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    .line 166
    :cond_6a
    iget-object v2, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    invoke-static {v2, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$202(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)Z

    goto :goto_c

    .line 153
    :cond_70
    const/4 v0, 0x0

    goto :goto_33

    .line 154
    :catch_72
    move-exception v1

    .line 155
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "settings not found"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_33
.end method
