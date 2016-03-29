.class Lcom/android/systemui/tuner/QsTuner$CustomHost;
.super Lcom/android/systemui/statusbar/phone/QSTileHost;
.source "QsTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;-><init>(Lcom/android/systemui/tuner/QsTuner$1;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/SoundPathController;Lcom/android/systemui/statusbar/policy/WifiP2pController;Lcom/android/systemui/statusbar/policy/ApMirroringController;)V

    .line 211
    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/tuner/QsTuner$CustomHost;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/tuner/QsTuner$CustomHost;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 318
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    .line 319
    const/4 v2, 0x0

    .line 322
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 316
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setTiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_qs_tiles"

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 256
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe7

    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v0, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setTiles(Ljava/util/List;)V

    .line 246
    return-void
.end method

.method protected createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 1
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v0, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setTiles(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "oldTile"    # Ljava/lang/String;
    .param p2, "newTile"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xe6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 225
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 226
    const-string v2, "QsTuner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setTiles(Ljava/util/List;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_qs_tiles"

    const-string v2, "default"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 251
    return-void
.end method

.method public showAddDialog()V
    .locals 11

    .prologue
    .line 259
    iget-object v8, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 260
    .local v8, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 261
    .local v6, "numBroadcast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 262
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "intent("

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 263
    add-int/lit8 v6, v6, 0x1

    .line 261
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0183

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "defaults":[Ljava/lang/String;
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    sub-int/2addr v9, v10

    new-array v0, v9, [Ljava/lang/String;

    .line 270
    .local v0, "available":[Ljava/lang/String;
    array-length v9, v0

    new-array v1, v9, [Ljava/lang/String;

    .line 271
    .local v1, "availableTiles":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 272
    .local v4, "index":I
    const/4 v3, 0x0

    :goto_1
    array-length v9, v2

    if-ge v3, v9, :cond_4

    .line 273
    aget-object v9, v2, v3

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 272
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    :cond_2
    aget-object v9, v2, v3

    # invokes: Lcom/android/systemui/tuner/QsTuner;->getLabelResource(Ljava/lang/String;)I
    invoke-static {v9}, Lcom/android/systemui/tuner/QsTuner;->access$400(Ljava/lang/String;)I

    move-result v7

    .line 277
    .local v7, "resource":I
    if-eqz v7, :cond_3

    .line 278
    aget-object v9, v2, v3

    aput-object v9, v1, v4

    .line 279
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 281
    :cond_3
    aget-object v9, v2, v3

    aput-object v9, v1, v4

    .line 282
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    aget-object v9, v2, v3

    aput-object v9, v0, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 285
    .end local v7    # "resource":I
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0388

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v4

    .line 286
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d0387

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;

    invoke-direct {v10, p0, v0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;-><init>(Lcom/android/systemui/tuner/QsTuner$CustomHost;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v9, v0, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
    return-void
.end method

.method public showBroadcastTileDialog()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0388

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;-><init>(Lcom/android/systemui/tuner/QsTuner$CustomHost;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 313
    return-void
.end method
