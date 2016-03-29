.class public Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
.super Landroid/app/Activity;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mCurrentKey:Ljava/lang/String;

.field private mCurrentRoute:Ljava/lang/String;

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mModeItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method getItemKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getItemPosition(Ljava/lang/String;)I
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v1, 0x400

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f040147

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->setContentView(I)V

    .line 84
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 85
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    .line 91
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e153a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string v2, "UICC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e153c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string v2, "DH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "ESE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SmartcardSvc_HideTerminalCapability"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e153d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string v2, "ESE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1540

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string v2, "AUTO_SELECT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const v1, 0x7f0d036c

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 114
    .local v10, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c00b0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0c00aa

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    .line 117
    .local v4, "divider_inset_size":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 119
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 126
    .local v9, "items":[Ljava/lang/String;
    new-instance v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

    const v2, 0x7f040124

    invoke-direct {v1, p0, v2, v9}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->adapter:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

    .line 128
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->adapter:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentRoute:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/CardEmulation;->supportsAutoRouting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    const-string v2, "AUTO_SELECT"

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemPosition(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 139
    const-string v1, "AUTO_SELECT"

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    .line 145
    :goto_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 148
    return-void

    .line 121
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v9    # "items":[Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 122
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 133
    .restart local v9    # "items":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 134
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "NfcAdvancedRoutingSetting"

    const-string v2, "Exception occured - getDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentRoute:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemPosition(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentRoute:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "NfcAdvancedRoutingSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTO_SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/CardEmulation;->enableAutoRouting()Z

    .line 182
    const-string v1, "AUTO_SELECT"

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V

    .line 200
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->showErrorDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcAdvancedRoutingSetting"

    const-string v2, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method showErrorDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "Route"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0e0d5e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0d5f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 284
    .local v0, "alert":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 285
    new-instance v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void
.end method
