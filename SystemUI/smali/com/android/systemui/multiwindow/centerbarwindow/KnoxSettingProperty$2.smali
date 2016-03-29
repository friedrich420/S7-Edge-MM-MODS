.class Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$2;
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
    .line 81
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$2;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 85
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 87
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string v5, "441"

    aput-object v5, v3, v4

    .line 88
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$2;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "getSealedMultiWindowFixedState"

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v5, v6, v7, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 90
    .local v2, "returnValue":Ljava/lang/Integer;
    if-nez v2, :cond_2

    move v0, v4

    .line 91
    .local v0, "knoxSealedMultiWindowFixedState":I
    :goto_0
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$500()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 92
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "knoxSealedMultiWindowFixedState chaged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$502(I)I

    .line 96
    :cond_0
    const-string v5, "442"

    aput-object v5, v3, v4

    .line 97
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$2;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "getSealedMultiWindowFixedState"

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnValue":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .restart local v2    # "returnValue":Ljava/lang/Integer;
    if-nez v2, :cond_3

    const/16 v1, 0x32

    .line 100
    .local v1, "knoxSealedMultiWindowFixedStatePercentage":I
    :goto_1
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$600()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 101
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "knoxSealedMultiWindowFixedStatePercentage chaged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->access$602(I)I

    .line 104
    :cond_1
    return-void

    .line 90
    .end local v0    # "knoxSealedMultiWindowFixedState":I
    .end local v1    # "knoxSealedMultiWindowFixedStatePercentage":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 99
    .restart local v0    # "knoxSealedMultiWindowFixedState":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method
