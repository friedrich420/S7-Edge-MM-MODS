.class public Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;
.super Landroid/widget/FrameLayout;
.source "XmlParserView.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mIsAnimationPlay:Z

.field private mIsParserSuccess:Z

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageName:Ljava/lang/String;

.field private mPackageWidth:F

.field private mUnlockEffectType:I

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v1, 0x40800000    # 4.0f

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "XmlParserView"

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    .line 32
    iput-boolean v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    .line 33
    iput-boolean v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 45
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 46
    iput v3, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 47
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 49
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 50
    iput v3, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 51
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 62
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p1, "pak"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePixelX(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1069
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDevicePixelY(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1073
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    .line 69
    const-string v2, "XmlParserView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XmlName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Default package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->setBackgroundColor(I)V

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, "apkContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 90
    .end local v0    # "apkContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v1

    .line 82
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 975
    const-string v0, "XmlParserView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    .line 977
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 1012
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1019
    return-void
.end method

.method public isParserSuccess()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 999
    const-string v0, "XmlParserView"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    .line 1001
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 992
    const-string v0, "XmlParserView"

    const-string v1, "screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->playAnimation()V

    .line 994
    return-void
.end method

.method public parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;
    .locals 31
    .param p1, "apkContext"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v28, 0x0

    .line 145
    .local v28, "view":Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;
    const/16 v24, 0x0

    .line 146
    .local v24, "scene":Lcom/android/keyguard/opentheme/common/LockscreenCallback;
    const/4 v13, 0x0

    .line 148
    .local v13, "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    const/16 v23, 0x0

    .line 149
    .local v23, "res":Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 151
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v29, -0x2

    .line 152
    .local v29, "width":I
    const/16 v18, -0x2

    .line 154
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 155
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 156
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    const-string v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 161
    new-instance v5, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    .line 163
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 164
    .local v16, "eventType":I
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_dd

    .line 165
    if-nez v16, :cond_1

    .line 948
    :cond_0
    :goto_1
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_0

    .line 167
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_ce

    .line 168
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 169
    .local v26, "startName":Ljava/lang/String;
    const-string v5, "screen"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 171
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 172
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 173
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 174
    .local v27, "value":Ljava/lang/String;
    const-string v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 176
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 177
    :cond_3
    const-string v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 179
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    :cond_4
    const-string v5, "density"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 182
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "view"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 187
    new-instance v28, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;

    .end local v28    # "view":Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v28    # "view":Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 190
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 191
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 192
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 193
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "img"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 194
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_6
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 198
    :cond_7
    const-string v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 199
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setX(F)V

    goto :goto_5

    .line 200
    :cond_8
    const-string v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 201
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setY(F)V

    goto :goto_5

    .line 202
    :cond_9
    const-string v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 203
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    goto :goto_5

    .line 204
    :cond_a
    const-string v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 205
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    goto :goto_5

    .line 206
    :cond_b
    const-string v5, "pivotX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 207
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setPivotX(F)V

    goto :goto_5

    .line 208
    :cond_c
    const-string v5, "pivotY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 209
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setPivotY(F)V

    goto/16 :goto_5

    .line 210
    :cond_d
    const-string v5, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 211
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setAlpha(F)V

    goto/16 :goto_5

    .line 212
    :cond_e
    const-string v5, "scaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 213
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setScaleX(F)V

    goto/16 :goto_5

    .line 214
    :cond_f
    const-string v5, "scaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 215
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setScaleY(F)V

    goto/16 :goto_5

    .line 218
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_10
    const-string v5, "scene"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 220
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 221
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_6
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 222
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 223
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 224
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 225
    const-string v5, "snow"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 227
    new-instance v25, Lcom/android/keyguard/opentheme/xmlparser/SnowView;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    .line 228
    .local v25, "snow":Lcom/android/keyguard/opentheme/xmlparser/SnowView;
    move-object/from16 v24, v25

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 230
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 232
    const/16 v5, 0x54

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    .line 221
    .end local v25    # "snow":Lcom/android/keyguard/opentheme/xmlparser/SnowView;
    :cond_11
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 233
    :cond_12
    const-string v5, "rain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 235
    new-instance v22, Lcom/android/keyguard/opentheme/xmlparser/RainView;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v22, "rain":Lcom/android/keyguard/opentheme/xmlparser/RainView;
    move-object/from16 v24, v22

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 238
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 240
    const/16 v5, 0x52

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_7

    .line 241
    .end local v22    # "rain":Lcom/android/keyguard/opentheme/xmlparser/RainView;
    :cond_13
    const-string v5, "leaf"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 243
    new-instance v20, Lcom/android/keyguard/opentheme/xmlparser/LeafView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v20, "leaf":Lcom/android/keyguard/opentheme/xmlparser/LeafView;
    move-object/from16 v24, v20

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 246
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 248
    const/16 v5, 0x53

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_7

    .line 249
    .end local v20    # "leaf":Lcom/android/keyguard/opentheme/xmlparser/LeafView;
    :cond_14
    const-string v5, "flower"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 251
    new-instance v17, Lcom/android/keyguard/opentheme/xmlparser/FlowerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v17, "flower":Lcom/android/keyguard/opentheme/xmlparser/FlowerView;
    move-object/from16 v24, v17

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 254
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 256
    const/16 v5, 0x51

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto/16 :goto_7

    .line 260
    .end local v14    # "count":I
    .end local v17    # "flower":Lcom/android/keyguard/opentheme/xmlparser/FlowerView;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_15
    const-string v5, "rotate"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 261
    const/4 v13, 0x0

    .line 262
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 263
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 264
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 265
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 266
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 267
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 268
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 264
    :cond_16
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 269
    :cond_17
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 270
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_9

    .line 271
    :cond_18
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 272
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_9

    .line 273
    :cond_19
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 274
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_9

    .line 275
    :cond_1a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 276
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_9

    .line 277
    :cond_1b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 278
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_9

    .line 279
    :cond_1c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 281
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 282
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    .line 284
    :cond_1d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    .line 287
    :cond_1e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 289
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 290
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 292
    :cond_1f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 295
    :cond_20
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 297
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 298
    :cond_21
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 299
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 302
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_22
    const-string v5, "parabola"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 303
    const/4 v13, 0x0

    .line 304
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 305
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 306
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 307
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 308
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 309
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 310
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 306
    :cond_23
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 311
    :cond_24
    const-string v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 312
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_b

    .line 313
    :cond_25
    const-string v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 314
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_b

    .line 315
    :cond_26
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 316
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_b

    .line 317
    :cond_27
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 318
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_b

    .line 319
    :cond_28
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 320
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_b

    .line 321
    :cond_29
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 322
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_b

    .line 323
    :cond_2a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 324
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_b

    .line 325
    :cond_2b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 326
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_b

    .line 327
    :cond_2c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 329
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 330
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 332
    :cond_2d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 335
    :cond_2e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 337
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 338
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 340
    :cond_2f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 343
    :cond_30
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 345
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 346
    :cond_31
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 347
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 351
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_32
    const-string v5, "sinX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 352
    const/4 v13, 0x0

    .line 353
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 354
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 355
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 356
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 357
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 358
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 359
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 355
    :cond_33
    :goto_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 360
    :cond_34
    const-string v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 361
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_d

    .line 362
    :cond_35
    const-string v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 363
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_d

    .line 364
    :cond_36
    const-string v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 365
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_d

    .line 366
    :cond_37
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 367
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_d

    .line 368
    :cond_38
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 369
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_d

    .line 370
    :cond_39
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 371
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_d

    .line 372
    :cond_3a
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 373
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_d

    .line 374
    :cond_3b
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 375
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_d

    .line 376
    :cond_3c
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 377
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_d

    .line 378
    :cond_3d
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 380
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 381
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 383
    :cond_3e
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 386
    :cond_3f
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 388
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 389
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 391
    :cond_40
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 394
    :cond_41
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 396
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 397
    :cond_42
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 398
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 401
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_43
    const-string v5, "sinY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 402
    const/4 v13, 0x0

    .line 403
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 404
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 405
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_e
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 406
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 407
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 408
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 409
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 405
    :cond_44
    :goto_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 410
    :cond_45
    const-string v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 411
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_f

    .line 412
    :cond_46
    const-string v5, "yFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 413
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_f

    .line 414
    :cond_47
    const-string v5, "yTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 415
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_f

    .line 416
    :cond_48
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 417
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_f

    .line 418
    :cond_49
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 419
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_f

    .line 420
    :cond_4a
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 421
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_f

    .line 422
    :cond_4b
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 423
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_f

    .line 424
    :cond_4c
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 425
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_f

    .line 426
    :cond_4d
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 427
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_f

    .line 428
    :cond_4e
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 430
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 431
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 433
    :cond_4f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 436
    :cond_50
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 438
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 439
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 441
    :cond_51
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 444
    :cond_52
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 446
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 447
    :cond_53
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 448
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 451
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_54
    const-string v5, "round"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 452
    const/4 v13, 0x0

    .line 453
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 454
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 455
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_10
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 456
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 457
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 458
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "r"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 459
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->r:F

    .line 455
    :cond_55
    :goto_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 461
    :cond_56
    const-string v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 462
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->a:F

    goto :goto_11

    .line 464
    :cond_57
    const-string v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 465
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->b:F

    goto :goto_11

    .line 467
    :cond_58
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 468
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_11

    .line 469
    :cond_59
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 470
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_11

    .line 471
    :cond_5a
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 472
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_11

    .line 473
    :cond_5b
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 474
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_11

    .line 475
    :cond_5c
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 476
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_11

    .line 477
    :cond_5d
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 478
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_11

    .line 479
    :cond_5e
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 481
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 482
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 484
    :cond_5f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 487
    :cond_60
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 489
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 490
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 492
    :cond_61
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 495
    :cond_62
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 497
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 498
    :cond_63
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 499
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 503
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_64
    const-string v5, "ellipse"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 504
    const/4 v13, 0x0

    .line 505
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 506
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 507
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_12
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 508
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 509
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 510
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "ra"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 511
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->ra:F

    .line 507
    :cond_65
    :goto_13
    add-int/lit8 v19, v19, 0x1

    goto :goto_12

    .line 513
    :cond_66
    const-string v5, "rb"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 514
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->rb:F

    goto :goto_13

    .line 516
    :cond_67
    const-string v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 517
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->a:F

    goto :goto_13

    .line 519
    :cond_68
    const-string v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 520
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->b:F

    goto :goto_13

    .line 522
    :cond_69
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 523
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_13

    .line 524
    :cond_6a
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 525
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_13

    .line 526
    :cond_6b
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 527
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_13

    .line 528
    :cond_6c
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 529
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_13

    .line 530
    :cond_6d
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 531
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_13

    .line 532
    :cond_6e
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 533
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_13

    .line 534
    :cond_6f
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 536
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 537
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 539
    :cond_70
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 542
    :cond_71
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 544
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 545
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 547
    :cond_72
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 550
    :cond_73
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 552
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 553
    :cond_74
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 554
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 558
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_75
    const-string v5, "alpha"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 559
    const/4 v13, 0x0

    .line 560
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 561
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 562
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_14
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 563
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 564
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 565
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 566
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 562
    :cond_76
    :goto_15
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 567
    :cond_77
    const-string v5, "toAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 568
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_15

    .line 569
    :cond_78
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 570
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_15

    .line 571
    :cond_79
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 572
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_15

    .line 573
    :cond_7a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 574
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_15

    .line 575
    :cond_7b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 576
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_15

    .line 577
    :cond_7c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 579
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 580
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_15

    .line 582
    :cond_7d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_15

    .line 585
    :cond_7e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 587
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 588
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 590
    :cond_7f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 593
    :cond_80
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 595
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 596
    :cond_81
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 597
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 601
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_82
    const-string v5, "translateX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 602
    const/4 v13, 0x0

    .line 603
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 604
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 605
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_16
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 606
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 607
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 608
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 609
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 605
    :cond_83
    :goto_17
    add-int/lit8 v19, v19, 0x1

    goto :goto_16

    .line 610
    :cond_84
    const-string v5, "toXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 611
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_17

    .line 612
    :cond_85
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 613
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_17

    .line 614
    :cond_86
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 615
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_17

    .line 616
    :cond_87
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 617
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_17

    .line 618
    :cond_88
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 619
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_17

    .line 620
    :cond_89
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 622
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 623
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_17

    .line 625
    :cond_8a
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 628
    :cond_8b
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 630
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 631
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 633
    :cond_8c
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 636
    :cond_8d
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 638
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 639
    :cond_8e
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 640
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 643
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_8f
    const-string v5, "translateY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 644
    const/4 v13, 0x0

    .line 645
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 646
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 647
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_18
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 648
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 649
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 650
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 651
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 647
    :cond_90
    :goto_19
    add-int/lit8 v19, v19, 0x1

    goto :goto_18

    .line 652
    :cond_91
    const-string v5, "toYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 653
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_19

    .line 654
    :cond_92
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 655
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_19

    .line 656
    :cond_93
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 657
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_19

    .line 658
    :cond_94
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 659
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_19

    .line 660
    :cond_95
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 661
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_19

    .line 662
    :cond_96
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 664
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 665
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_19

    .line 667
    :cond_97
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 670
    :cond_98
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 672
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 673
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 675
    :cond_99
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 678
    :cond_9a
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 680
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 681
    :cond_9b
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 682
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 685
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_9c
    const-string v5, "scaleX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 686
    const/4 v13, 0x0

    .line 687
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 688
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 689
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1a
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 690
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 691
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 692
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 693
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 689
    :cond_9d
    :goto_1b
    add-int/lit8 v19, v19, 0x1

    goto :goto_1a

    .line 694
    :cond_9e
    const-string v5, "toXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 695
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_1b

    .line 696
    :cond_9f
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 697
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1b

    .line 698
    :cond_a0
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 699
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1b

    .line 700
    :cond_a1
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 701
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1b

    .line 702
    :cond_a2
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 703
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1b

    .line 704
    :cond_a3
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 706
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 707
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 709
    :cond_a4
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 712
    :cond_a5
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 714
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 715
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 717
    :cond_a6
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 720
    :cond_a7
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 722
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 723
    :cond_a8
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 724
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 727
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_a9
    const-string v5, "scaleY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 728
    const/4 v13, 0x0

    .line 729
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 730
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 731
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1c
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 732
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 733
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 734
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 735
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 731
    :cond_aa
    :goto_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_1c

    .line 736
    :cond_ab
    const-string v5, "toYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 737
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_1d

    .line 738
    :cond_ac
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 739
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1d

    .line 740
    :cond_ad
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 741
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1d

    .line 742
    :cond_ae
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 743
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1d

    .line 744
    :cond_af
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 745
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1d

    .line 746
    :cond_b0
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 748
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 749
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    .line 751
    :cond_b1
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    .line 754
    :cond_b2
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 756
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 757
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 759
    :cond_b3
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 762
    :cond_b4
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 764
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 765
    :cond_b5
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 766
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 769
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_b6
    const-string v5, "ImageResource"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 770
    const/4 v13, 0x0

    .line 771
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 772
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 773
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1e
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 774
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 775
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 776
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "length"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 777
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    .line 773
    :cond_b7
    :goto_1f
    add-int/lit8 v19, v19, 0x1

    goto :goto_1e

    .line 778
    :cond_b8
    const-string v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 780
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    goto :goto_1f

    .line 783
    :cond_b9
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 784
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1f

    .line 785
    :cond_ba
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 786
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1f

    .line 787
    :cond_bb
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 788
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1f

    .line 789
    :cond_bc
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 790
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1f

    .line 791
    :cond_bd
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 793
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 794
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1f

    .line 796
    :cond_be
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 799
    :cond_bf
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 801
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 802
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 804
    :cond_c0
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 807
    :cond_c1
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 809
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 810
    :cond_c2
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 811
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 815
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_c3
    const-string v5, "frame"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 816
    const/4 v13, 0x0

    .line 817
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 818
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 819
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_20
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 820
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 821
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 822
    .local v27, "value":I
    const-string v5, "top"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 823
    move/from16 v0, v27

    iput v0, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->top:I

    .line 819
    :cond_c4
    :goto_21
    add-int/lit8 v19, v19, 0x1

    goto :goto_20

    .line 824
    :cond_c5
    const-string v5, "minInterval"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 825
    move/from16 v0, v27

    iput v0, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->minInterval:I

    goto :goto_21

    .line 829
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":I
    :cond_c6
    const-string v5, "item"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 832
    .restart local v14    # "count":I
    if-eqz v13, :cond_0

    .line 833
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_22
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 834
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 835
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 836
    .local v27, "value":Ljava/lang/String;
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v5, "frameSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 838
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_c7
    :goto_23
    add-int/lit8 v19, v19, 0x1

    goto :goto_22

    .line 839
    :cond_c8
    const-string v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 840
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 843
    :cond_c9
    const-string v5, "background"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 844
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->backgroundId:I

    goto :goto_23

    .line 847
    :cond_ca
    const-string v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 848
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 849
    :cond_cb
    const-string v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 850
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 851
    :cond_cc
    const-string v5, "scale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 852
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 853
    :cond_cd
    const-string v5, "startIndex"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 854
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 860
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v26    # "startName":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_ce
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_0

    .line 861
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 862
    .local v15, "endName":Ljava/lang/String;
    const-string v5, "view"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 864
    const/16 v29, -0x2

    .line 865
    const/16 v18, -0x2

    goto/16 :goto_1

    .line 866
    :cond_cf
    const-string v5, "rotate"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 867
    if-eqz v13, :cond_0

    .line 868
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "rotation"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 871
    :cond_d0
    const-string v5, "parabola"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 872
    if-eqz v13, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 876
    :cond_d1
    const-string v5, "sinX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 877
    if-eqz v13, :cond_0

    .line 878
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 881
    :cond_d2
    const-string v5, "sinY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 882
    if-eqz v13, :cond_0

    .line 883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 886
    :cond_d3
    const-string v5, "round"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 887
    if-eqz v13, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "round"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 891
    :cond_d4
    const-string v5, "ellipse"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 892
    if-eqz v13, :cond_0

    .line 893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 896
    :cond_d5
    const-string v5, "alpha"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 897
    if-eqz v13, :cond_0

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 901
    :cond_d6
    const-string v5, "translateX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 902
    if-eqz v13, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "x"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 906
    :cond_d7
    const-string v5, "translateY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 907
    if-eqz v13, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "y"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 911
    :cond_d8
    const-string v5, "scaleX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 912
    if-eqz v13, :cond_0

    .line 913
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 916
    :cond_d9
    const-string v5, "scaleY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 917
    if-eqz v13, :cond_0

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 921
    :cond_da
    const-string v5, "ImageResource"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 922
    if-eqz v28, :cond_db

    .line 923
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setApkContext(Landroid/content/Context;)V

    .line 926
    :cond_db
    if-eqz v13, :cond_0

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 931
    :cond_dc
    const-string v5, "frame"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    const/4 v4, 0x0

    .line 933
    .local v4, "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    if-eqz v13, :cond_0

    .line 935
    new-instance v4, Lcom/android/keyguard/opentheme/xmlparser/Frame;

    .end local v4    # "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    iget v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->backgroundId:I

    iget-object v7, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/opentheme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 940
    .restart local v4    # "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    iget v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Frame;->setTop(I)V

    .line 941
    iget v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Frame;->setMinInterval(I)V

    .line 942
    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/opentheme/xmlparser/Frame;)V

    goto/16 :goto_1

    .line 951
    .end local v4    # "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    .end local v15    # "endName":Ljava/lang/String;
    :cond_dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public playAnimation()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-nez v0, :cond_0

    .line 101
    const-string v0, "XmlParserView"

    const-string v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->playAnimation()V

    .line 105
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 970
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "XmlParserView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->stopAnimation()V

    .line 133
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 981
    const-string v1, "XmlParserView"

    const-string v2, "update New Animation wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getCurrentOpenThemeXmlPackageName()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "packagename":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->cleanUp()V

    .line 985
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_0
    return-void
.end method
