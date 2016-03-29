.class public Lcom/android/keyguard/util/FontEffectUtil;
.super Ljava/lang/Object;
.source "FontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;,
        Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;,
        Lcom/android/keyguard/util/FontEffectUtil$Stroke;,
        Lcom/android/keyguard/util/FontEffectUtil$DropShadow;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/keyguard/util/FontEffectUtil;


# instance fields
.field public mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

.field public mIsSetDropShadow:Z

.field public mIsSetLinearGradient:Z

.field public mIsSetOuterGlow:Z

.field public mIsSetStroke:Z

.field public mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

.field public mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

.field public mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetDropShadow:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetStroke:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetOuterGlow:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetLinearGradient:Z

    .line 49
    new-instance v0, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;-><init>(Lcom/android/keyguard/util/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    .line 50
    new-instance v0, Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/FontEffectUtil$Stroke;-><init>(Lcom/android/keyguard/util/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    .line 51
    new-instance v0, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;-><init>(Lcom/android/keyguard/util/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    .line 52
    new-instance v0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;-><init>(Lcom/android/keyguard/util/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/FontEffectUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/android/keyguard/util/FontEffectUtil;->mInstance:Lcom/android/keyguard/util/FontEffectUtil;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/keyguard/util/FontEffectUtil;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/FontEffectUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/FontEffectUtil;->mInstance:Lcom/android/keyguard/util/FontEffectUtil;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/keyguard/util/FontEffectUtil;->mInstance:Lcom/android/keyguard/util/FontEffectUtil;

    return-object v0
.end method

.method private isAvailable()Z
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetDropShadow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetStroke:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_1
    const-string v0, "FontEffectParsingInfo"

    const-string v1, "Font effect is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseStringToColor(Ljava/lang/String;)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 195
    .local v2, "i":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "hex":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "result":I
    return v1
.end method

.method private stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tokenizer"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 202
    const/4 v4, 0x0

    .line 204
    .local v4, "strSplit":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 207
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v6, "FontEffectParsingInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NPE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :goto_1
    return-object v5

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FontEffectParsingInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :cond_0
    move-object v5, v4

    .line 216
    goto :goto_1
.end method


# virtual methods
.method public parsingFontEffectString(Ljava/lang/String;)Z
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v6, 0x0

    .line 79
    .local v6, "isparsed":Z
    const-string v7, "|"

    invoke-direct {p0, p1, v7}, Lcom/android/keyguard/util/FontEffectUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "firstSplite":[Ljava/lang/String;
    if-eqz v2, :cond_7

    array-length v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 82
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "finalSplit":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetDropShadow:Z

    .line 84
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v7, :cond_0

    .line 87
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->offset:F

    .line 88
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->softness:F

    .line 89
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->blendingOpacity:F

    .line 90
    array-length v7, v1

    const/4 v8, 0x4

    if-le v7, v8, :cond_3

    .line 91
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    const/4 v8, 0x4

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->angle:F

    .line 95
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 97
    const/4 v7, 0x1

    aget-object v7, v2, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetStroke:Z

    .line 100
    iget-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetStroke:Z

    if-eqz v7, :cond_1

    .line 102
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->size:F

    .line 103
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-direct {p0, v8}, Lcom/android/keyguard/util/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->color:I

    .line 104
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->blendingOpacity:F

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 108
    const/4 v7, 0x2

    aget-object v7, v2, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetOuterGlow:Z

    .line 111
    iget-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v7, :cond_2

    .line 113
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;->size:F

    .line 114
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-direct {p0, v8}, Lcom/android/keyguard/util/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;->color:I

    .line 115
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;->blendingOpacity:F

    .line 117
    :cond_2
    const/4 v1, 0x0

    .line 119
    const/4 v7, 0x3

    aget-object v7, v2, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetLinearGradient:Z

    .line 122
    iget-boolean v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v7, :cond_5

    .line 125
    const/4 v4, 0x1

    .line 127
    .local v4, "index":I
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->scale:F

    .line 128
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, "arraySize":I
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    new-array v8, v0, [I

    iput-object v8, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->colors:[I

    .line 131
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->alphas:[F

    .line 132
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->positions:[F

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 135
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->colors:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v8, v1, v5

    invoke-direct {p0, v8}, Lcom/android/keyguard/util/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 136
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->alphas:[F

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 137
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->positions:[F

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 134
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 93
    .end local v0    # "arraySize":I
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    const/high16 v8, 0x42b40000    # 90.0f

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->angle:F

    goto/16 :goto_0

    .line 140
    .restart local v0    # "arraySize":I
    .restart local v3    # "i":I
    .restart local v5    # "index":I
    :cond_4
    array-length v7, v1

    if-ge v5, v7, :cond_6

    .line 141
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->blendingOpacity:F

    .line 146
    .end local v0    # "arraySize":I
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 147
    const/4 v6, 0x1

    .line 151
    .end local v1    # "finalSplit":[Ljava/lang/String;
    :goto_3
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isparsed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v6

    .line 143
    .restart local v0    # "arraySize":I
    .restart local v1    # "finalSplit":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "index":I
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->blendingOpacity:F

    goto :goto_2

    .line 149
    .end local v0    # "arraySize":I
    .end local v1    # "finalSplit":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public setTextFontEffect(Landroid/widget/TextView;)V
    .locals 7
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/keyguard/util/FontEffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    iget v1, v0, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->angle:F

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    iget v2, v0, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->offset:F

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    iget v3, v0, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->softness:F

    const/high16 v4, -0x1000000

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/util/FontEffectUtil$DropShadow;

    iget v5, v0, Lcom/android/keyguard/util/FontEffectUtil$DropShadow;->blendingOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 167
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    iget v0, v0, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;->size:F

    iget-object v1, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    iget v1, v1, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;->color:I

    iget-object v2, p0, Lcom/android/keyguard/util/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;

    iget v2, v2, Lcom/android/keyguard/util/FontEffectUtil$OuterGlow;->blendingOpacity:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    .line 172
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetStroke:Z

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    iget v0, v0, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->size:F

    iget-object v1, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    iget v1, v1, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->color:I

    iget-object v2, p0, Lcom/android/keyguard/util/FontEffectUtil;->mStroke:Lcom/android/keyguard/util/FontEffectUtil$Stroke;

    iget v2, v2, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->blendingOpacity:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 176
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_0

    .line 177
    const/high16 v1, 0x42b40000    # 90.0f

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget v2, v0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->scale:F

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget-object v3, v0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->colors:[I

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget-object v4, v0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->alphas:[F

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget-object v5, v0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->positions:[F

    iget-object v0, p0, Lcom/android/keyguard/util/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;

    iget v6, v0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->blendingOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->addLinearGradientTextEffect(FF[I[F[FF)I

    goto :goto_0
.end method
