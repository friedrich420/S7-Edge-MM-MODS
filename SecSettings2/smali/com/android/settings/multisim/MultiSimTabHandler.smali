.class public Lcom/android/settings/multisim/MultiSimTabHandler;
.super Ljava/lang/Object;
.source "MultiSimTabHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field public mSimSlot:I

.field public mSubId:J

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private main_content2:Landroid/widget/FrameLayout;

.field private numSims:I

.field private tabInterface:Lcom/android/settings/multisim/MultiSimTabInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ApnSettings"

    sput-object v0, Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    .line 30
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    .line 109
    new-instance v0, Lcom/android/settings/multisim/MultiSimTabHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/multisim/MultiSimTabHandler$1;-><init>(Lcom/android/settings/multisim/MultiSimTabHandler;)V

    iput-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 122
    new-instance v0, Lcom/android/settings/multisim/MultiSimTabHandler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/multisim/MultiSimTabHandler$2;-><init>(Lcom/android/settings/multisim/MultiSimTabHandler;)V

    iput-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 48
    iput-object p1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    .line 49
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->numSims:I

    .line 50
    sget-object v0, Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numSims: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->numSims:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/multisim/MultiSimTabHandler;)Lcom/android/settings/multisim/MultiSimTabInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisim/MultiSimTabHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/android/settings/multisim/MultiSimTabInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/multisim/MultiSimTabHandler;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisim/MultiSimTabHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "Sim_id"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initSimInfo()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, "sIntent":Landroid/content/Intent;
    const-string v1, "simSlot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "simSlot"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    .line 149
    sget-object v1, Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    const-string v2, "mSimSlot is set by intent"

    invoke-static {v1, v2}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v4

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    .line 157
    sget-object v1, Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in initSimInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 161
    :cond_1
    return-void

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x5

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iput v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    .line 154
    sget-object v1, Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    const-string v2, "mSimSlot is set by slot2"

    invoke-static {v1, v2}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTab()V
    .locals 5

    .prologue
    .line 75
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x7f04010c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    .line 78
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabWidget:Landroid/widget/TabWidget;

    .line 79
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mListView:Landroid/widget/ListView;

    .line 80
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x7f0d02f1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    .line 82
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 83
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 84
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->numSims:I

    if-ge v0, v3, :cond_1

    .line 88
    invoke-direct {p0, v0}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "simName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    :goto_1
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 95
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    .local v1, "simIcon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "simIcon":Landroid/widget/ImageView;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 102
    .end local v2    # "simName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public checkMultiSim()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "ret":Z
    iget v2, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->numSims:I

    if-le v2, v1, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/multisim/MultiSimTabHandler;->initTab()V

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/multisim/MultiSimTabHandler;->initSimInfo()V

    .line 60
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-le v2, v1, :cond_1

    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimSlot()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    return v0
.end method

.method public getSubId()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    return-wide v0
.end method

.method public resume()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 65
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTabInteface(Lcom/android/settings/multisim/MultiSimTabInterface;)V
    .locals 0
    .param p1, "tabInterface"    # Lcom/android/settings/multisim/MultiSimTabInterface;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/android/settings/multisim/MultiSimTabInterface;

    .line 42
    return-void
.end method
