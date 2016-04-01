.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1338
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1197
    new-array v0, v2, [I

    iput-object v0, p0, mRules:[I

    .line 1226
    new-array v0, v2, [I

    iput-object v0, p0, mInitialRules:[I

    .line 1230
    iput-boolean v1, p0, mRulesChanged:Z

    .line 1231
    iput-boolean v1, p0, mIsRtlCompatibilityMode:Z

    .line 1339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1197
    const/16 v8, 0x16

    new-array v8, v8, [I

    iput-object v8, p0, mRules:[I

    .line 1226
    const/16 v8, 0x16

    new-array v8, v8, [I

    iput-object v8, p0, mInitialRules:[I

    .line 1230
    const/4 v8, 0x0

    iput-boolean v8, p0, mRulesChanged:Z

    .line 1231
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsRtlCompatibilityMode:Z

    .line 1243
    sget-object v8, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1246
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1247
    .local v7, "targetSdkVersion":I
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_54

    const/4 v5, 0x1

    .line 1249
    .local v5, "isSystemApp":Z
    :goto_2c
    const/16 v8, 0x11

    if-ge v7, v8, :cond_32

    if-eqz v5, :cond_3c

    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v8

    if-nez v8, :cond_56

    :cond_3c
    const/4 v8, 0x1

    :goto_3d
    iput-boolean v8, p0, mIsRtlCompatibilityMode:Z

    .line 1252
    iget-object v6, p0, mRules:[I

    .line 1254
    .local v6, "rules":[I
    iget-object v4, p0, mInitialRules:[I

    .line 1256
    .local v4, "initialRules":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1257
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    if-ge v3, v0, :cond_16c

    .line 1258
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1259
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_17a

    .line 1257
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 1247
    .end local v0    # "N":I
    .end local v2    # "attr":I
    .end local v3    # "i":I
    .end local v4    # "initialRules":[I
    .end local v5    # "isSystemApp":Z
    .end local v6    # "rules":[I
    :cond_54
    const/4 v5, 0x0

    goto :goto_2c

    .line 1249
    .restart local v5    # "isSystemApp":Z
    :cond_56
    const/4 v8, 0x0

    goto :goto_3d

    .line 1261
    .restart local v0    # "N":I
    .restart local v2    # "attr":I
    .restart local v3    # "i":I
    .restart local v4    # "initialRules":[I
    .restart local v6    # "rules":[I
    :pswitch_58
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, alignWithParent:Z

    goto :goto_51

    .line 1264
    :pswitch_60
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1267
    :pswitch_69
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1270
    :pswitch_72
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1273
    :pswitch_7b
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1276
    :pswitch_84
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1279
    :pswitch_8d
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1282
    :pswitch_96
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1285
    :pswitch_9f
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1288
    :pswitch_a8
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1291
    :pswitch_b2
    const/16 v9, 0x9

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_bf

    const/4 v8, -0x1

    :goto_bc
    aput v8, v6, v9

    goto :goto_51

    :cond_bf
    const/4 v8, 0x0

    goto :goto_bc

    .line 1294
    :pswitch_c1
    const/16 v9, 0xa

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_ce

    const/4 v8, -0x1

    :goto_cb
    aput v8, v6, v9

    goto :goto_51

    :cond_ce
    const/4 v8, 0x0

    goto :goto_cb

    .line 1297
    :pswitch_d0
    const/16 v9, 0xb

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_de

    const/4 v8, -0x1

    :goto_da
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_de
    const/4 v8, 0x0

    goto :goto_da

    .line 1300
    :pswitch_e0
    const/16 v9, 0xc

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_ee

    const/4 v8, -0x1

    :goto_ea
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_ee
    const/4 v8, 0x0

    goto :goto_ea

    .line 1303
    :pswitch_f0
    const/16 v9, 0xd

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_fe

    const/4 v8, -0x1

    :goto_fa
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_fe
    const/4 v8, 0x0

    goto :goto_fa

    .line 1306
    :pswitch_100
    const/16 v9, 0xe

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_10e

    const/4 v8, -0x1

    :goto_10a
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_10e
    const/4 v8, 0x0

    goto :goto_10a

    .line 1309
    :pswitch_110
    const/16 v9, 0xf

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_11e

    const/4 v8, -0x1

    :goto_11a
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_11e
    const/4 v8, 0x0

    goto :goto_11a

    .line 1312
    :pswitch_120
    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1315
    :pswitch_12b
    const/16 v8, 0x11

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1318
    :pswitch_136
    const/16 v8, 0x12

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1321
    :pswitch_141
    const/16 v8, 0x13

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1324
    :pswitch_14c
    const/16 v9, 0x14

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_15a

    const/4 v8, -0x1

    :goto_156
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_15a
    const/4 v8, 0x0

    goto :goto_156

    .line 1327
    :pswitch_15c
    const/16 v9, 0x15

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_16a

    const/4 v8, -0x1

    :goto_166
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_16a
    const/4 v8, 0x0

    goto :goto_166

    .line 1331
    .end local v2    # "attr":I
    :cond_16c
    const/4 v8, 0x1

    iput-boolean v8, p0, mRulesChanged:Z

    .line 1332
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-static {v6, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1334
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1335
    return-void

    .line 1259
    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_84
        :pswitch_8d
        :pswitch_96
        :pswitch_9f
        :pswitch_a8
        :pswitch_b2
        :pswitch_c1
        :pswitch_d0
        :pswitch_e0
        :pswitch_f0
        :pswitch_100
        :pswitch_110
        :pswitch_58
        :pswitch_120
        :pswitch_12b
        :pswitch_136
        :pswitch_141
        :pswitch_14c
        :pswitch_15c
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1345
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    new-array v0, v2, [I

    iput-object v0, p0, mRules:[I

    .line 1226
    new-array v0, v2, [I

    iput-object v0, p0, mInitialRules:[I

    .line 1230
    iput-boolean v1, p0, mRulesChanged:Z

    .line 1231
    iput-boolean v1, p0, mIsRtlCompatibilityMode:Z

    .line 1346
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1352
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1197
    new-array v0, v2, [I

    iput-object v0, p0, mRules:[I

    .line 1226
    new-array v0, v2, [I

    iput-object v0, p0, mInitialRules:[I

    .line 1230
    iput-boolean v1, p0, mRulesChanged:Z

    .line 1231
    iput-boolean v1, p0, mIsRtlCompatibilityMode:Z

    .line 1353
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 1362
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1197
    new-array v0, v3, [I

    iput-object v0, p0, mRules:[I

    .line 1226
    new-array v0, v3, [I

    iput-object v0, p0, mInitialRules:[I

    .line 1230
    iput-boolean v2, p0, mRulesChanged:Z

    .line 1231
    iput-boolean v2, p0, mIsRtlCompatibilityMode:Z

    .line 1364
    iget-boolean v0, p1, mIsRtlCompatibilityMode:Z

    iput-boolean v0, p0, mIsRtlCompatibilityMode:Z

    .line 1365
    iget-boolean v0, p1, mRulesChanged:Z

    iput-boolean v0, p0, mRulesChanged:Z

    .line 1366
    iget-boolean v0, p1, alignWithParent:Z

    iput-boolean v0, p0, alignWithParent:Z

    .line 1368
    iget-object v0, p1, mRules:[I

    iget-object v1, p0, mRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1369
    iget-object v0, p1, mInitialRules:[I

    iget-object v1, p0, mInitialRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1371
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1196
    iget v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iput p1, p0, mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iget v0, p0, mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iget v0, p0, mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1196
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iput p1, p0, mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iget v0, p0, mRight:I

    add-int/2addr v0, p1

    iput v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iget v0, p0, mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1196
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iput p1, p0, mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iget v0, p0, mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1196
    iget v0, p0, mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iput p1, p0, mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1196
    iget v0, p0, mTop:I

    add-int/2addr v0, p1

    iput v0, p0, mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1196
    iget-object v0, p0, mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .registers 3

    .prologue
    .line 1452
    iget-object v0, p0, mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private resolveRules(I)V
    .registers 11
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1471
    if-ne p1, v1, :cond_c9

    move v0, v1

    .line 1474
    .local v0, "isLayoutRtl":Z
    :goto_b
    iget-object v3, p0, mInitialRules:[I

    iget-object v4, p0, mRules:[I

    const/16 v5, 0x16

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1477
    iget-boolean v3, p0, mIsRtlCompatibilityMode:Z

    if-eqz v3, :cond_cc

    .line 1478
    iget-object v3, p0, mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_32

    .line 1479
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_2e

    .line 1482
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x5

    iget-object v5, p0, mRules:[I

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1484
    :cond_2e
    iget-object v3, p0, mRules:[I

    aput v2, v3, v6

    .line 1487
    :cond_32
    iget-object v3, p0, mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_52

    .line 1488
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-nez v3, :cond_4c

    .line 1491
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x7

    iget-object v5, p0, mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1493
    :cond_4c
    iget-object v3, p0, mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1496
    :cond_52
    iget-object v3, p0, mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_6a

    .line 1497
    iget-object v3, p0, mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_66

    .line 1500
    iget-object v3, p0, mRules:[I

    iget-object v4, p0, mRules:[I

    aget v4, v4, v7

    aput v4, v3, v2

    .line 1502
    :cond_66
    iget-object v3, p0, mRules:[I

    aput v2, v3, v7

    .line 1505
    :cond_6a
    iget-object v3, p0, mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_82

    .line 1506
    iget-object v3, p0, mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_7e

    .line 1509
    iget-object v3, p0, mRules:[I

    iget-object v4, p0, mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1511
    :cond_7e
    iget-object v1, p0, mRules:[I

    aput v2, v1, v8

    .line 1514
    :cond_82
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_a4

    .line 1515
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_9e

    .line 1518
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x9

    iget-object v4, p0, mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1520
    :cond_9e
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1523
    :cond_a4
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_c6

    .line 1524
    iget-object v1, p0, mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-nez v1, :cond_c0

    .line 1527
    iget-object v1, p0, mRules:[I

    const/16 v3, 0xb

    iget-object v4, p0, mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1529
    :cond_c0
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    .line 1584
    :cond_c6
    :goto_c6
    iput-boolean v2, p0, mRulesChanged:Z

    .line 1585
    return-void

    .end local v0    # "isLayoutRtl":Z
    :cond_c9
    move v0, v2

    .line 1471
    goto/16 :goto_b

    .line 1533
    .restart local v0    # "isLayoutRtl":Z
    :cond_cc
    iget-object v3, p0, mRules:[I

    aget v3, v3, v6

    if-nez v3, :cond_da

    iget-object v3, p0, mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_f2

    :cond_da
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_e8

    iget-object v3, p0, mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-eqz v3, :cond_f2

    .line 1536
    :cond_e8
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 1537
    iget-object v3, p0, mRules:[I

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 1539
    :cond_f2
    iget-object v3, p0, mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_107

    .line 1541
    iget-object v4, p0, mRules:[I

    if-eqz v0, :cond_1d2

    const/4 v3, 0x7

    :goto_fd
    iget-object v5, p0, mRules:[I

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1542
    iget-object v3, p0, mRules:[I

    aput v2, v3, v6

    .line 1544
    :cond_107
    iget-object v3, p0, mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_122

    .line 1546
    iget-object v4, p0, mRules:[I

    if-eqz v0, :cond_1d5

    const/4 v3, 0x5

    :goto_114
    iget-object v5, p0, mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1547
    iget-object v3, p0, mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1550
    :cond_122
    iget-object v3, p0, mRules:[I

    aget v3, v3, v7

    if-nez v3, :cond_12e

    iget-object v3, p0, mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_142

    :cond_12e
    iget-object v3, p0, mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_13a

    iget-object v3, p0, mRules:[I

    aget v3, v3, v1

    if-eqz v3, :cond_142

    .line 1553
    :cond_13a
    iget-object v3, p0, mRules:[I

    aput v2, v3, v2

    .line 1554
    iget-object v3, p0, mRules:[I

    aput v2, v3, v1

    .line 1556
    :cond_142
    iget-object v3, p0, mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_157

    .line 1558
    iget-object v4, p0, mRules:[I

    if-eqz v0, :cond_1d8

    move v3, v1

    :goto_14d
    iget-object v5, p0, mRules:[I

    aget v5, v5, v7

    aput v5, v4, v3

    .line 1559
    iget-object v3, p0, mRules:[I

    aput v2, v3, v7

    .line 1561
    :cond_157
    iget-object v3, p0, mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_16c

    .line 1563
    iget-object v3, p0, mRules:[I

    if-eqz v0, :cond_162

    move v1, v2

    :cond_162
    iget-object v4, p0, mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1564
    iget-object v1, p0, mRules:[I

    aput v2, v1, v8

    .line 1567
    :cond_16c
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-nez v1, :cond_17c

    iget-object v1, p0, mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_198

    :cond_17c
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_18c

    iget-object v1, p0, mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-eqz v1, :cond_198

    .line 1570
    :cond_18c
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 1571
    iget-object v1, p0, mRules:[I

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 1573
    :cond_198
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_1b4

    .line 1575
    iget-object v3, p0, mRules:[I

    if-eqz v0, :cond_1db

    const/16 v1, 0xb

    :goto_1a6
    iget-object v4, p0, mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1576
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1578
    :cond_1b4
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_c6

    .line 1580
    iget-object v3, p0, mRules:[I

    if-eqz v0, :cond_1de

    const/16 v1, 0x9

    :goto_1c2
    iget-object v4, p0, mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1581
    iget-object v1, p0, mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    goto/16 :goto_c6

    .line 1541
    :cond_1d2
    const/4 v3, 0x5

    goto/16 :goto_fd

    .line 1546
    :cond_1d5
    const/4 v3, 0x7

    goto/16 :goto_114

    :cond_1d8
    move v3, v2

    .line 1558
    goto/16 :goto_14d

    .line 1575
    :cond_1db
    const/16 v1, 0x9

    goto :goto_1a6

    .line 1580
    :cond_1de
    const/16 v1, 0xb

    goto :goto_1c2
.end method


# virtual methods
.method public addRule(I)V
    .registers 4
    .param p1, "verb"    # I

    .prologue
    const/4 v1, -0x1

    .line 1393
    iget-object v0, p0, mRules:[I

    aput v1, v0, p1

    .line 1394
    iget-object v0, p0, mInitialRules:[I

    aput v1, v0, p1

    .line 1395
    const/4 v0, 0x1

    iput-boolean v0, p0, mRulesChanged:Z

    .line 1396
    return-void
.end method

.method public addRule(II)V
    .registers 4
    .param p1, "verb"    # I
    .param p2, "anchor"    # I

    .prologue
    .line 1414
    iget-object v0, p0, mRules:[I

    aput p2, v0, p1

    .line 1415
    iget-object v0, p0, mInitialRules:[I

    aput p2, v0, p1

    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, mRulesChanged:Z

    .line 1417
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, width:I

    invoke-static {v1}, sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, height:I

    invoke-static {v1}, sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1637
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1638
    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1639
    return-void
.end method

.method public getRule(I)I
    .registers 3
    .param p1, "verb"    # I

    .prologue
    .line 1448
    iget-object v0, p0, mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .registers 2

    .prologue
    .line 1621
    iget-object v0, p0, mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1602
    invoke-direct {p0}, hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, mRulesChanged:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 1604
    :cond_10
    invoke-direct {p0, p1}, resolveRules(I)V

    .line 1605
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 1606
    invoke-virtual {p0, p1}, setLayoutDirection(I)V

    .line 1609
    :cond_1c
    iget-object v0, p0, mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .registers 4
    .param p1, "verb"    # I

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-object v0, p0, mRules:[I

    aput v1, v0, p1

    .line 1431
    iget-object v0, p0, mInitialRules:[I

    aput v1, v0, p1

    .line 1432
    const/4 v0, 0x1

    iput-boolean v0, p0, mRulesChanged:Z

    .line 1433
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1626
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    .line 1627
    .local v0, "isLayoutRtl":Z
    invoke-direct {p0}, hasRelativeRules()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_13

    .line 1628
    invoke-direct {p0, p1}, resolveRules(I)V

    .line 1631
    :cond_13
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1632
    return-void
.end method
