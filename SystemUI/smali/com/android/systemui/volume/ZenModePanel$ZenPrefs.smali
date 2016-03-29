.class final Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZenPrefs"
.end annotation


# instance fields
.field private mConfirmedPriorityIntroduction:Z

.field private mConfirmedSilenceIntroduction:Z

.field private mMinuteIndex:I

.field private final mNoneDangerousThreshold:I

.field private mNoneSelected:I

.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 2

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneDangerousThreshold:I

    .line 853
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 854
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateMinuteIndex()V

    .line 855
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateNoneSelected()V

    .line 856
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedPriorityIntroduction()V

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedSilenceIntroduction()V

    .line 858
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui/volume/ZenModePanel$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    return v0
.end method

.method private clampIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 894
    const/4 v0, -0x1

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$2300()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampNoneSelected(I)I
    .locals 2
    .param p1, "noneSelected"    # I

    .prologue
    .line 904
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private updateConfirmedPriorityIntroduction()V
    .locals 4

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DndConfirmedPriorityIntroduction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 910
    .local v0, "confirmed":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    if-ne v0, v1, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    .line 912
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirmed priority introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateConfirmedSilenceIntroduction()V
    .locals 4

    .prologue
    .line 917
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DndConfirmedSilenceIntroduction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 919
    .local v0, "confirmed":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    if-ne v0, v1, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    .line 921
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirmed silence introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMinuteIndex()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndCountdownMinuteIndex"

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$2200()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    .line 890
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    return-void
.end method

.method private updateNoneSelected()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndNoneSelected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    .line 900
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    return-void
.end method


# virtual methods
.method public getMinuteIndex()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateMinuteIndex()V

    .line 882
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateNoneSelected()V

    .line 883
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedPriorityIntroduction()V

    .line 884
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedSilenceIntroduction()V

    .line 885
    return-void
.end method

.method public setMinuteIndex(I)V
    .locals 3
    .param p1, "minuteIndex"    # I

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result p1

    .line 873
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    if-ne p1, v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 874
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    .line 875
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndCountdownMinuteIndex"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public trackNoneSelected()V
    .locals 3

    .prologue
    .line 861
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    .line 862
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting none selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneDangerousThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndNoneSelected"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 865
    return-void
.end method
