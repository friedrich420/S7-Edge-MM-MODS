.class public Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLayered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FPoint"
.end annotation


# instance fields
.field private distance:F

.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 1

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->distance:F

    return-void
.end method


# virtual methods
.method public calculateDistance(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 1124
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->x:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->y:F

    sub-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->distance:F

    .line 1126
    return-void
.end method

.method public calculateDistance(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;)V
    .locals 6
    .param p1, "p"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 1129
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->x:F

    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->y:F

    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->distance:F

    .line 1131
    return-void
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->distance:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->y:F

    return v0
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "d"    # F

    .prologue
    .line 1134
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->distance:F

    .line 1135
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 1112
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->x:F

    .line 1113
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 1120
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->y:F

    .line 1121
    return-void
.end method
