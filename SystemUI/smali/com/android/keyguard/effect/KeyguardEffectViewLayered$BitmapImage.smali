.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLayered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapImage"
.end annotation


# static fields
.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_RESOURCE:I = 0x0

.field public static final TYPE_SOLID_COLOR:I = 0x2


# instance fields
.field public alpha:F

.field public bitmap:Landroid/graphics/Bitmap;

.field protected bitmapLoaded:Z

.field private calculatedAlpha:F

.field private curPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

.field public direction:I

.field public id_path_color:Ljava/lang/String;

.field public matrix:Landroid/graphics/Matrix;

.field private originMatrix:Landroid/graphics/Matrix;

.field public originX:F

.field public originY:F

.field private prevPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

.field public rate:F

.field public scale:F

.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

.field public type:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 1

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    .line 1167
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    .line 1168
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originMatrix:Landroid/graphics/Matrix;

    .line 1169
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1269
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->alpha:F

    return v0
.end method

.method public getCalcualatedAlpha()F
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->calculatedAlpha:F

    return v0
.end method

.method public getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->curPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->direction:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getLayer()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getOriginDx()F
    .locals 2

    .prologue
    .line 1188
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getOriginDy()F
    .locals 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getOriginMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->prevPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    return-object v0
.end method

.method public getRate()F
    .locals 2

    .prologue
    .line 1180
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->rate:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1204
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->scale:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1259
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1260
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1261
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1262
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->curPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .line 1263
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->prevPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .line 1264
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateAlpha(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    invoke-static {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$2500(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 1265
    return-void
.end method

.method public set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 1
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    .line 1240
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    .line 1241
    iget-object v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    .line 1242
    iget-object v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 1243
    iget-boolean v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    .line 1244
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->alpha:F

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->alpha:F

    .line 1245
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->rate:F

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->rate:F

    .line 1246
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    .line 1247
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    .line 1248
    iget-object v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->matrix:Landroid/graphics/Matrix;

    .line 1249
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originMatrix:Landroid/graphics/Matrix;

    .line 1250
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->scale:F

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->scale:F

    .line 1251
    iget v0, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->direction:I

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->direction:I

    .line 1252
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCalcualatedAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->calculatedAlpha:F

    .line 1253
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->curPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .line 1254
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->prevPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .line 1255
    return-void
.end method

.method public setCalculatedAlpha(F)V
    .locals 0
    .param p1, "cAlpha"    # F

    .prologue
    .line 1196
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->calculatedAlpha:F

    .line 1197
    return-void
.end method

.method public setCurPoint(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;)V
    .locals 0
    .param p1, "curPoint"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->curPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .line 1221
    return-void
.end method

.method public setPrevPoint(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;)V
    .locals 0
    .param p1, "prevPoint"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->prevPoint:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    .line 1225
    return-void
.end method
