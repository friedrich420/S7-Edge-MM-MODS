.class public Lcom/android/settings/BlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlockSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mIsCallSeparate:Z


# instance fields
.field private mCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mListIndex:I

.field private mMessageBlockMode:Landroid/preference/PreferenceScreen;

.field private mRejectModeDlgId:I

.field private mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/android/settings/BlockSettings$9;

    invoke-direct {v0}, Lcom/android/settings/BlockSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/BlockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BlockSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BlockSettings;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BlockSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BlockSettings;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BlockSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BlockSettings;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setBlockMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BlockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BlockSettings;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/android/settings/BlockSettings;->isSupportCSVT()Z

    move-result v0

    return v0
.end method

.method private getCallBlockMode()I
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIndexFromValue(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "current":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    goto :goto_0

    .line 224
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 225
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    goto :goto_0

    .line 226
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    goto :goto_0
.end method

.method private getMessageBlockMode()I
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "messageblock_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getModeDialogId()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    return v0
.end method

.method private getVideoBlockMode()I
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_videocall_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static isSupportCSVT()Z
    .locals 4

    .prologue
    .line 398
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_VT_ConfigBearer"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "cscVTFeatures":Ljava/lang/String;
    const/4 v1, 0x1

    .line 400
    .local v1, "isSupport":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    const-string v2, "-CSVT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v1, 0x0

    .line 405
    :cond_0
    return v1
.end method

.method private makeCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 243
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e1462

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$2;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a2

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$1;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    .local v0, "callBlockDialog":Landroid/app/Dialog;
    return-object v0
.end method

.method private makeMessageBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 308
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 309
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e146c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$8;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a5

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$7;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 324
    .local v0, "messageBlockDialog":Landroid/app/Dialog;
    return-object v0
.end method

.method private makeVideoCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 286
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e1469

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$6;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a4

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$5;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 303
    .local v0, "videoCallBlockDialog":Landroid/app/Dialog;
    return-object v0
.end method

.method private makeVoiceCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 265
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e1466

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$4;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a3

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$3;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 281
    .local v0, "voiceCallBlockDialog":Landroid/app/Dialog;
    return-object v0
.end method

.method private setBlockMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getModeDialogId()I

    move-result v0

    .line 144
    .local v0, "id":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 148
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_videocall_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 150
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "messageblock_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setModeDialogId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    .line 238
    return-void
.end method

.method private updateSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 168
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    .line 170
    .local v0, "mBlockMode":I
    if-ne v0, v3, :cond_4

    .line 171
    const v1, 0x7f0e1473

    .line 177
    .local v1, "res_id":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 180
    .end local v0    # "mBlockMode":I
    .end local v1    # "res_id":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    .line 182
    .restart local v0    # "mBlockMode":I
    if-ne v0, v3, :cond_6

    .line 183
    const v1, 0x7f0e1474

    .line 189
    .restart local v1    # "res_id":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 192
    .end local v0    # "mBlockMode":I
    .end local v1    # "res_id":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    .line 194
    .restart local v0    # "mBlockMode":I
    if-ne v0, v3, :cond_8

    .line 195
    const v1, 0x7f0e1475

    .line 201
    .restart local v1    # "res_id":I
    :goto_2
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 204
    .end local v0    # "mBlockMode":I
    .end local v1    # "res_id":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    .line 206
    .restart local v0    # "mBlockMode":I
    if-ne v0, v3, :cond_a

    .line 207
    const v1, 0x7f0e1477

    .line 213
    .restart local v1    # "res_id":I
    :goto_3
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 215
    .end local v0    # "mBlockMode":I
    .end local v1    # "res_id":I
    :cond_3
    return-void

    .line 172
    .restart local v0    # "mBlockMode":I
    :cond_4
    if-ne v0, v4, :cond_5

    .line 173
    const v1, 0x7f0e1476

    .restart local v1    # "res_id":I
    goto :goto_0

    .line 175
    .end local v1    # "res_id":I
    :cond_5
    const v1, 0x7f0e1479

    .restart local v1    # "res_id":I
    goto :goto_0

    .line 184
    .end local v1    # "res_id":I
    :cond_6
    if-ne v0, v4, :cond_7

    .line 185
    const v1, 0x7f0e1476

    .restart local v1    # "res_id":I
    goto :goto_1

    .line 187
    .end local v1    # "res_id":I
    :cond_7
    const v1, 0x7f0e1479

    .restart local v1    # "res_id":I
    goto :goto_1

    .line 196
    .end local v1    # "res_id":I
    :cond_8
    if-ne v0, v4, :cond_9

    .line 197
    const v1, 0x7f0e1476

    .restart local v1    # "res_id":I
    goto :goto_2

    .line 199
    .end local v1    # "res_id":I
    :cond_9
    const v1, 0x7f0e1479

    .restart local v1    # "res_id":I
    goto :goto_2

    .line 208
    .end local v1    # "res_id":I
    :cond_a
    if-ne v0, v4, :cond_b

    .line 209
    const v1, 0x7f0e1478

    .restart local v1    # "res_id":I
    goto :goto_3

    .line 211
    .end local v1    # "res_id":I
    :cond_b
    const v1, 0x7f0e1479

    .restart local v1    # "res_id":I
    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVTCallCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/BlockSettings;->isSupportCSVT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    .line 109
    :goto_0
    sget-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    const-string v0, "voice_callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 112
    const-string v0, "video_callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 113
    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 123
    :goto_1
    const-string v0, "messageblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    .line 124
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 116
    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 117
    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "voice_call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "video_call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 338
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 330
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 332
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVoiceCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVideoCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 336
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeMessageBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    .line 356
    :goto_0
    return v0

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    .line 347
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    .line 350
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    .line 353
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    .line 130
    return-void
.end method
