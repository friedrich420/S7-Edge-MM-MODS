.class public Lcom/android/settings/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mModePreviewValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsPositivePressed:Z

.field private mListView:Landroid/widget/ListView;

.field private mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

.field private mOldSelection:I

.field private mScreenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 57
    iput v1, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 59
    iput v1, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 62
    new-instance v0, Lcom/android/settings/ModePreviewTablet$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ModePreviewTablet$1;-><init>(Lcom/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModePreviewTablet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ModePreviewTablet;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/ModePreviewTablet;->updateState()V

    return-void
.end method

.method private getDBValueByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 176
    sget-object v0, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIndexByDBValue()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, "dbvalue":I
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    sget-object v2, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iput-boolean v3, p0, Lcom/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 141
    invoke-direct {p0}, Lcom/android/settings/ModePreviewTablet;->getIndexByDBValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 143
    iget v0, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 144
    const-string v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState() positoin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 147
    iget v0, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_1
    const-string v0, "ModePreview"

    const-string v1, "updateState() positoin : -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-boolean v1, p0, Lcom/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v1, :cond_0

    .line 218
    iget v1, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-direct {p0, v1}, Lcom/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    .line 219
    .local v0, "dbvalue":I
    const-string v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecHardwareInterface.setmDNIeUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    iget v1, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    .end local v0    # "dbvalue":I
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 226
    return-void

    .line 221
    .restart local v0    # "dbvalue":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 209
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 212
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 77
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e113a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e113b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/android/settings/ModePreviewAdapter;

    sget-object v2, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v4, v2}, Lcom/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 116
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 120
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 121
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04013f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 122
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    const v1, 0x7f0e01ba

    invoke-virtual {p0, v1}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    const v1, 0x7f0e0826

    invoke-virtual {p0, v1}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 127
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0d0361

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    .line 129
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0d017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 130
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->setupAlert()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/ModePreviewTablet;->updateState()V

    .line 136
    iget v1, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    iput v1, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 137
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p3}, Lcom/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    .line 195
    .local v0, "dbvalue":I
    const-string v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecHardwareInterface.setmDNIeUserMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 197
    if-nez p3, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 242
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 243
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 244
    .local v1, "selectMode":I
    const-string v2, "MODE_PREVIEW_POSITION"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, "restoreMode":I
    const-string v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreInstanceState restoreMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreInstanceState mOldSelection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_0

    .line 248
    iput v0, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 250
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 231
    .local v0, "selectMode":I
    const-string v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOldSelection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-boolean v1, p0, Lcom/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v1, :cond_0

    .line 234
    iget v1, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    if-eq v0, v1, :cond_0

    .line 235
    const-string v1, "MODE_PREVIEW_POSITION"

    iget v2, p0, Lcom/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    :cond_0
    return-void
.end method
