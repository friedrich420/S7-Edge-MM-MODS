.class Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$1;
.super Landroid/database/ContentObserver;
.source "KnoxSettingProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->addKnoxContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 72
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_1:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "getSealedState"

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "returnValue":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 75
    .local v0, "knoxSealedState":Z
    :goto_0
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$200()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 76
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "knoxSealedState chaged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$202(Z)Z

    .line 79
    :cond_0
    return-void

    .line 74
    .end local v0    # "knoxSealedState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
