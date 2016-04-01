.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_EDGE_COLLAPSE:I = 0x3

.field public static final MODE_EDGE_UNITE:I = 0x4

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"

.field private static final segments70:[[F

.field private static final segments80:[[F

.field private static final segmentsSIn33:[[F


# instance fields
.field private mAlphaLoc:I

.field private mCollapseLoc:I

.field private mCreatedResources:Z

.field private mDeviceDimLoc:I

.field private final mDeviceDimVec:[F

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mFeather:I

.field private final mGLBuffers:[I

.field private mGammaLoc:I

.field private mMode:I

.field private mOpacity:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSaturationLoc:I

.field private mScaleLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTex1D:[I

.field private mTex1DGenerated:Z

.field private mTex1DLoc:I

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I

.field private sine80Tex:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 184
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_5a

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_64

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_6e

    aput-object v1, v0, v5

    sput-object v0, segments70:[[F

    .line 185
    new-array v0, v5, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_78

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_82

    aput-object v1, v0, v4

    sput-object v0, segmentsSIn33:[[F

    .line 239
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_8c

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_96

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_a0

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_aa

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    sput-object v0, segments80:[[F

    return-void

    .line 184
    nop

    :array_5a
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ee66666    # 0.45f
    .end array-data

    :array_64
    .array-data 4
        0x3ee66666    # 0.45f
        0x3f4ccccd    # 0.8f
        0x3f6872b0    # 0.908f
    .end array-data

    :array_6e
    .array-data 4
        0x3f6872b0    # 0.908f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data

    .line 185
    :array_78
    .array-data 4
        0x0
        0x3a83126f    # 0.001f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_82
    .array-data 4
        0x3ea3d70a    # 0.32f
        0x3f170a3d    # 0.59f
        0x3f800000    # 1.0f
    .end array-data

    .line 239
    :array_8c
    .array-data 4
        0x0
        0x0
        0x3e47ae14    # 0.195f
    .end array-data

    :array_96
    .array-data 4
        0x3e47ae14    # 0.195f
        0x3ef5c28f    # 0.48f
        0x3f251eb8    # 0.645f
    .end array-data

    :array_a0
    .array-data 4
        0x3f251eb8    # 0.645f
        0x3f55c28f    # 0.835f
        0x3f628f5c    # 0.885f
    .end array-data

    :array_aa
    .array-data 4
        0x3f628f5c    # 0.885f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_b4
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-array v0, v1, [I

    iput-object v0, p0, mTexNames:[I

    .line 115
    new-array v0, v1, [I

    iput-object v0, p0, mTex1D:[I

    .line 120
    new-array v0, v4, [F

    iput-object v0, p0, mTexMatrix:[F

    .line 121
    new-array v0, v4, [F

    iput-object v0, p0, mProjMatrix:[F

    .line 122
    new-array v0, v2, [I

    iput-object v0, p0, mGLBuffers:[I

    .line 128
    new-array v0, v2, [F

    iput-object v0, p0, mDeviceDimVec:[F

    .line 135
    invoke-static {v3}, createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 136
    invoke-static {v3}, createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 213
    const/16 v0, 0xeb

    new-array v0, v0, [B

    fill-array-data v0, :array_52

    iput-object v0, p0, sine80Tex:[B

    .line 174
    iput p1, p0, mDisplayId:I

    .line 175
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 178
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 179
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 181
    return-void

    .line 213
    nop

    :array_52
    .array-data 1
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0xat
        0xat
        0xbt
        0xct
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x10t
        0x12t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x17t
        0x18t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x20t
        0x20t
        0x21t
        0x23t
        0x23t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2bt
        0x2bt
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x35t
        0x36t
        0x37t
        0x38t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3ft
        0x40t
        0x41t
        0x43t
        0x44t
        0x44t
        0x46t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4dt
        0x4et
        0x4ft
        0x51t
        0x52t
        0x54t
        0x54t
        0x56t
        0x58t
        0x59t
        0x5at
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x61t
        0x63t
        0x64t
        0x65t
        0x67t
        0x68t
        0x69t
        0x6bt
        0x6ct
        0x6et
        0x6ft
        0x71t
        0x72t
        0x73t
        0x75t
        0x76t
        0x77t
        0x79t
        0x7at
        0x7bt
        0x7dt
        0x7et
        0x7ft
        -0x80t
        -0x7et
        -0x7ct
        -0x7bt
        -0x7at
        -0x78t
        -0x76t
        -0x74t
        -0x73t
        -0x71t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6at
        -0x68t
        -0x67t
        -0x66t
        -0x64t
        -0x63t
        -0x62t
        -0x60t
        -0x5ft
        -0x5et
        -0x5ct
        -0x5bt
        -0x59t
        -0x58t
        -0x57t
        -0x55t
        -0x55t
        -0x54t
        -0x51t
        -0x51t
        -0x4ft
        -0x4et
        -0x4ct
        -0x4ct
        -0x4at
        -0x48t
        -0x47t
        -0x46t
        -0x44t
        -0x43t
        -0x42t
        -0x41t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x35t
        -0x34t
        -0x33t
        -0x31t
        -0x31t
        -0x2ft
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x23t
        -0x23t
        -0x22t
        -0x21t
        -0x20t
        -0x1ft
        -0x1ft
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x17t
        -0x15t
        -0x15t
        -0x14t
        -0x12t
        -0x12t
        -0x11t
        -0x10t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x9t
        -0x8t
        -0x8t
        -0x7t
        -0x6t
        -0x6t
        -0x5t
        -0x4t
        -0x4t
        -0x3t
        -0x2t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private attachEglContext()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1166
    iget-object v1, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 1169
    iget-object v1, p0, mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_b

    .line 1180
    :goto_a
    return v0

    .line 1172
    :cond_b
    iget-object v1, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1173
    const-string/jumbo v1, "eglMakeCurrent"

    invoke-static {v1}, logEglError(Ljava/lang/String;)V

    goto :goto_a

    .line 1178
    :cond_20
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v1, "ColorFade : attachEglContext"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1180
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 903
    iget-object v1, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 906
    invoke-direct {p0}, attachEglContext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 969
    :goto_e
    return v0

    .line 910
    :cond_f
    :try_start_f
    iget-boolean v1, p0, mTexNamesGenerated:Z

    if-nez v1, :cond_2a

    .line 911
    const/4 v1, 0x1

    iget-object v2, p0, mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 912
    const-string/jumbo v1, "glGenTextures"

    invoke-static {v1}, checkGlErrors(Ljava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_ed

    move-result v1

    if-eqz v1, :cond_27

    .line 957
    invoke-direct {p0}, detachEglContext()V

    goto :goto_e

    .line 915
    :cond_27
    const/4 v0, 0x1

    :try_start_28
    iput-boolean v0, p0, mTexNamesGenerated:Z

    .line 918
    :cond_2a
    new-instance v9, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v9, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 919
    .local v9, "st":Landroid/graphics/SurfaceTexture;
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8, v9}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_ed

    .line 922
    .local v8, "s":Landroid/view/Surface;
    const/4 v7, 0x0

    .line 924
    .local v7, "displayId":I
    :try_start_3a
    iget v0, p0, mDisplayId:I

    if-ne v0, v10, :cond_dc

    .line 925
    sget v7, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    .line 929
    :cond_40
    :goto_40
    invoke-static {v7}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 931
    invoke-virtual {v9}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 932
    iget-object v0, p0, mTexMatrix:[F

    invoke-virtual {v9, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_e5

    .line 934
    :try_start_4f
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 935
    invoke-virtual {v9}, Landroid/graphics/SurfaceTexture;->release()V

    .line 939
    iget v0, p0, mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5e

    iget v0, p0, mMode:I

    if-ne v0, v11, :cond_71

    .line 940
    :cond_5e
    iget-object v0, p0, mDeviceDimVec:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 941
    iget-object v0, p0, mDeviceDimVec:[F

    const/4 v1, 0x1

    iget v2, p0, mDisplayHeight:I

    int-to-float v2, v2

    iget v3, p0, mDisplayWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 948
    :cond_71
    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 949
    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 950
    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 951
    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 954
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, mDisplayWidth:I

    iget v3, p0, mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 955
    const/4 v1, 0x0

    iget v0, p0, mDisplayWidth:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, mDisplayHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, ortho(FFFFFF)V
    :try_end_c6
    .catchall {:try_start_4f .. :try_end_c6} :catchall_ed

    .line 957
    invoke-direct {p0}, detachEglContext()V

    .line 960
    iget v0, p0, mMode:I

    if-ne v0, v11, :cond_d0

    .line 962
    invoke-direct {p0}, setupGradientTexture()Z

    .line 966
    :cond_d0
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v1, "ColorFade : captureScreenshotTextureAndSetViewport"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    move v0, v10

    .line 969
    goto/16 :goto_e

    .line 926
    :cond_dc
    :try_start_dc
    iget v0, p0, mDisplayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 927
    sget v7, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_EXPANDED:I
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_e5

    goto/16 :goto_40

    .line 934
    :catchall_e5
    move-exception v0

    :try_start_e6
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 935
    invoke-virtual {v9}, Landroid/graphics/SurfaceTexture;->release()V

    throw v0
    :try_end_ed
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_ed

    .line 957
    .end local v7    # "displayId":I
    .end local v8    # "s":Landroid/view/Surface;
    .end local v9    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_ed
    move-exception v0

    invoke-direct {p0}, detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 1201
    const/4 v0, 0x1

    invoke-static {p0, v0}, checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .prologue
    .line 1205
    const/4 v1, 0x0

    .line 1207
    .local v1, "hadError":Z
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_2c

    .line 1208
    if-eqz p1, :cond_2a

    .line 1209
    const-string v2, "ColorFade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    :cond_2a
    const/4 v1, 0x1

    goto :goto_1

    .line 1213
    :cond_2c
    return v1
.end method

.method private createEglContext()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 990
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 993
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_33

    .line 994
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 995
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_1e

    .line 996
    const-string/jumbo v0, "eglGetDisplay"

    invoke-static {v0}, logEglError(Ljava/lang/String;)V

    .line 1045
    :goto_1d
    return v2

    .line 1000
    :cond_1e
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 1001
    .local v9, "version":[I
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1002
    const/4 v0, 0x0

    iput-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 1003
    const-string/jumbo v0, "eglInitialize"

    invoke-static {v0}, logEglError(Ljava/lang/String;)V

    goto :goto_1d

    .line 1008
    .end local v9    # "version":[I
    :cond_33
    iget-object v0, p0, mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_58

    .line 1009
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_84

    .line 1018
    .local v1, "eglConfigAttribList":[I
    new-array v6, v10, [I

    .line 1019
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 1020
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1022
    const-string/jumbo v0, "eglChooseConfig"

    invoke-static {v0}, logEglError(Ljava/lang/String;)V

    goto :goto_1d

    .line 1025
    :cond_54
    aget-object v0, v3, v2

    iput-object v0, p0, mEglConfig:Landroid/opengl/EGLConfig;

    .line 1028
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_58
    iget-object v0, p0, mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_79

    .line 1029
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_9e

    .line 1033
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, mEglContext:Landroid/opengl/EGLContext;

    .line 1035
    iget-object v0, p0, mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_79

    .line 1036
    const-string/jumbo v0, "eglCreateContext"

    invoke-static {v0}, logEglError(Ljava/lang/String;)V

    goto :goto_1d

    .line 1042
    .end local v8    # "eglContextAttribList":[I
    :cond_79
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v2, "ColorFade : createEglContext"

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    move v2, v10

    .line 1045
    goto :goto_1d

    .line 1009
    :array_84
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    .line 1029
    :array_9e
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1099
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 1102
    iget-object v3, p0, mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_28

    .line 1103
    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 1107
    .local v0, "eglSurfaceAttribList":[I
    iget-object v3, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, mEglSurface:Landroid/opengl/EGLSurface;

    .line 1109
    iget-object v3, p0, mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_28

    .line 1110
    const-string/jumbo v2, "eglCreateWindowSurface"

    invoke-static {v2}, logEglError(Ljava/lang/String;)V

    .line 1119
    .end local v0    # "eglSurfaceAttribList":[I
    :goto_27
    return v1

    .line 1116
    :cond_28
    iget-object v1, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v3, "ColorFade : createEglSurface"

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    move v1, v2

    .line 1119
    goto :goto_27
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 1191
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1192
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1193
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .registers 9

    .prologue
    .line 1050
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 1053
    iget-object v0, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_10

    .line 1054
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    .line 1057
    :cond_10
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1059
    :try_start_13
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_81

    if-nez v0, :cond_2f

    .line 1062
    :try_start_17
    iget v0, p0, mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_71

    .line 1063
    const v6, 0x20004

    .line 1067
    .local v6, "flags":I
    :goto_1f
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ColorFade"

    iget v3, p0, mDisplayWidth:I

    iget v4, p0, mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2f
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_17 .. :try_end_2f} :catch_74
    .catchall {:try_start_17 .. :try_end_2f} :catchall_81

    .line 1076
    .end local v6    # "flags":I
    :cond_2f
    :try_start_2f
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1077
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, mDisplayWidth:I

    iget v2, p0, mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 1078
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 1079
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1081
    iget-object v0, p0, mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    if-nez v0, :cond_5e

    .line 1082
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v1, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, mDisplayId:I

    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 1085
    :cond_5e
    iget-object v0, p0, mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_63
    .catchall {:try_start_2f .. :try_end_63} :catchall_81

    .line 1087
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1091
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v1, "ColorFade : createSurface"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1094
    const/4 v0, 0x1

    :goto_70
    return v0

    .line 1065
    :cond_71
    const/16 v6, 0x404

    .restart local v6    # "flags":I
    goto :goto_1f

    .line 1070
    .end local v6    # "flags":I
    :catch_74
    move-exception v7

    .line 1071
    .local v7, "ex":Landroid/view/Surface$OutOfResourcesException;
    :try_start_75
    const-string v0, "ColorFade"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_81

    .line 1072
    const/4 v0, 0x0

    .line 1087
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_70

    .end local v7    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :catchall_81
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .registers 3

    .prologue
    .line 1123
    iget-object v0, p0, mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_17

    .line 1124
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1125
    const-string/jumbo v0, "eglDestroySurface"

    invoke-static {v0}, logEglError(Ljava/lang/String;)V

    .line 1127
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, mEglSurface:Landroid/opengl/EGLSurface;

    .line 1129
    :cond_17
    return-void
.end method

.method private destroyGLBuffers()V
    .registers 4

    .prologue
    .line 542
    const/4 v0, 0x2

    iget-object v1, p0, mGLBuffers:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 543
    const-string/jumbo v0, "glDeleteBuffers"

    invoke-static {v0}, checkGlErrors(Ljava/lang/String;)Z

    .line 544
    return-void
.end method

.method private destroyGLShaders()V
    .registers 2

    .prologue
    .line 477
    iget v0, p0, mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 478
    const-string/jumbo v0, "glDeleteProgram"

    invoke-static {v0}, checkGlErrors(Ljava/lang/String;)Z

    .line 479
    return-void
.end method

.method private destroyGradientTexture()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 973
    iget-boolean v0, p0, mTex1DGenerated:Z

    if-eqz v0, :cond_13

    .line 974
    iput-boolean v2, p0, mTex1DGenerated:Z

    .line 975
    const/4 v0, 0x1

    iget-object v1, p0, mTex1D:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 976
    const-string/jumbo v0, "glDeleteTextures"

    invoke-static {v0}, checkGlErrors(Ljava/lang/String;)Z

    .line 978
    :cond_13
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 981
    iget-boolean v0, p0, mTexNamesGenerated:Z

    if-eqz v0, :cond_13

    .line 982
    iput-boolean v2, p0, mTexNamesGenerated:Z

    .line 983
    const/4 v0, 0x1

    iget-object v1, p0, mTexNames:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 984
    const-string/jumbo v0, "glDeleteTextures"

    invoke-static {v0}, checkGlErrors(Ljava/lang/String;)Z

    .line 986
    :cond_13
    return-void
.end method

.method private destroySurface()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1132
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    .line 1133
    iget-object v0, p0, mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 1134
    iput-object v1, p0, mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 1135
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1137
    :try_start_f
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1138
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_25

    .line 1140
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1142
    iput-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, mSurfaceVisible:Z

    .line 1144
    const/4 v0, 0x0

    iput v0, p0, mSurfaceAlpha:F

    .line 1146
    :cond_24
    return-void

    .line 1140
    :catchall_25
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .registers 5

    .prologue
    .line 1184
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_f

    .line 1185
    iget-object v0, p0, mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1188
    :cond_f
    return-void
.end method

.method private drawEdgeCollapse(F)V
    .registers 15
    .param p1, "saturation"    # F

    .prologue
    const v12, 0x8892

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 706
    sub-float v0, v4, p1

    invoke-virtual {p0, v0}, interpol_SineInOut70Interpolation_getStep(F)F

    move-result v8

    .line 707
    .local v8, "edgeCollapseStep":F
    sub-float v0, v4, p1

    invoke-virtual {p0, v0}, interpol_SineIn33Interpolation_getStep(F)F

    move-result v6

    .line 713
    .local v6, "alphaStep":F
    iget v0, p0, mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 715
    iget v0, p0, mProjMatrixLoc:I

    iget-object v1, p0, mProjMatrix:[F

    invoke-static {v0, v11, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 716
    iget v0, p0, mTexMatrixLoc:I

    iget-object v1, p0, mTexMatrix:[F

    invoke-static {v0, v11, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 717
    iget v0, p0, mDeviceDimLoc:I

    iget-object v1, p0, mDeviceDimVec:[F

    invoke-static {v0, v11, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 718
    iget v0, p0, mCollapseLoc:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 719
    iget v0, p0, mAlphaLoc:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 723
    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, p1}, Ljava/lang/Float;-><init>(F)V

    .line 724
    .local v10, "sat_val":Ljava/lang/Float;
    new-instance v7, Ljava/lang/Float;

    const-string v0, "0.0"

    invoke-direct {v7, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 725
    .local v7, "des_sat_val":Ljava/lang/Float;
    invoke-virtual {v10, v7}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v9

    .line 727
    .local v9, "retval":I
    if-nez v9, :cond_53

    .line 728
    invoke-static {v2, v2, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 729
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 750
    :goto_52
    return-void

    .line 733
    :cond_53
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 734
    const v0, 0x8d65

    iget-object v1, p0, mTexNames:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 737
    iget-object v0, p0, mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 738
    iget v0, p0, mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 739
    iget v0, p0, mVertexLoc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 741
    iget-object v0, p0, mGLBuffers:[I

    aget v0, v0, v11

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 742
    iget v0, p0, mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 743
    iget v0, p0, mTexCoordLoc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 745
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 748
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 749
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_52
.end method

.method private drawEdgeUnite(F)V
    .registers 19
    .param p1, "saturation"    # F

    .prologue
    .line 757
    const v16, 0x3e4ccccd    # 0.2f

    .line 758
    .local v16, "saturationAtMaxFeather":F
    sub-float v1, p1, v16

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v16

    div-float v11, v1, v2

    .line 759
    .local v11, "feather":F
    const/4 v1, 0x0

    cmpg-float v1, v11, v1

    if-gez v1, :cond_11

    .line 760
    const/4 v11, 0x0

    .line 762
    :cond_11
    const v12, 0x3eb33333    # 0.35f

    .line 763
    .local v12, "minStep":F
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, interpol_SineInOut80Interpolation_getStep(F)F

    move-result v2

    sub-float v9, v1, v2

    .line 764
    .local v9, "edgeUniteStep":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v12

    mul-float/2addr v1, v9

    add-float v9, v1, v12

    .line 765
    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, interpol_SineInOut80Interpolation_getStep(F)F

    move-result v2

    mul-float v10, v1, v2

    .line 767
    .local v10, "edgeUniteStepFeather":F
    cmpg-float v1, v9, v12

    if-gez v1, :cond_3b

    .line 768
    move v9, v12

    .line 771
    :cond_3b
    const v7, 0x3e6b851f    # 0.23f

    .line 774
    .local v7, "brightnessAt83percent":F
    sub-float v1, p1, v7

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    div-float v13, v1, v2

    .line 775
    .local v13, "opacity":F
    const/4 v1, 0x0

    cmpg-float v1, v13, v1

    if-gez v1, :cond_4b

    const/4 v13, 0x0

    .line 782
    :cond_4b
    move-object/from16 v0, p0

    iget v1, v0, mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 784
    move-object/from16 v0, p0

    iget v1, v0, mProjMatrixLoc:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mProjMatrix:[F

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 785
    move-object/from16 v0, p0

    iget v1, v0, mTexMatrixLoc:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mTexMatrix:[F

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 786
    move-object/from16 v0, p0

    iget v1, v0, mDeviceDimLoc:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, mDeviceDimVec:[F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 787
    move-object/from16 v0, p0

    iget v1, v0, mCollapseLoc:I

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 788
    move-object/from16 v0, p0

    iget v1, v0, mFeather:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 789
    move-object/from16 v0, p0

    iget v1, v0, mOpacity:I

    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 790
    move-object/from16 v0, p0

    iget v1, v0, mTex1DLoc:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 793
    new-instance v15, Ljava/lang/Float;

    move/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/Float;-><init>(F)V

    .line 794
    .local v15, "sat_val":Ljava/lang/Float;
    new-instance v8, Ljava/lang/Float;

    const-string v1, "0.0"

    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 795
    .local v8, "des_sat_val":Ljava/lang/Float;
    invoke-virtual {v15, v8}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v14

    .line 797
    .local v14, "retval":I
    if-nez v14, :cond_ba

    .line 798
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 799
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 823
    :goto_b9
    return-void

    .line 803
    :cond_ba
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 804
    const v1, 0x8d65

    move-object/from16 v0, p0

    iget-object v2, v0, mTexNames:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 805
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 806
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, mTex1D:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 809
    const v1, 0x8892

    move-object/from16 v0, p0

    iget-object v2, v0, mGLBuffers:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 810
    move-object/from16 v0, p0

    iget v1, v0, mVertexLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 811
    move-object/from16 v0, p0

    iget v1, v0, mVertexLoc:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 813
    const v1, 0x8892

    move-object/from16 v0, p0

    iget-object v2, v0, mGLBuffers:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 814
    move-object/from16 v0, p0

    iget v1, v0, mTexCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 815
    move-object/from16 v0, p0

    iget v1, v0, mTexCoordLoc:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 817
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 820
    const v1, 0x8d65

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 821
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 822
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto/16 :goto_b9
.end method

.method private drawFaded(FFFF)V
    .registers 13
    .param p1, "opacity"    # F
    .param p2, "gamma"    # F
    .param p3, "saturation"    # F
    .param p4, "scale"    # F

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 832
    iget v0, p0, mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 835
    iget v0, p0, mProjMatrixLoc:I

    iget-object v4, p0, mProjMatrix:[F

    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 836
    iget v0, p0, mTexMatrixLoc:I

    iget-object v4, p0, mTexMatrix:[F

    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 837
    iget v0, p0, mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 838
    iget v0, p0, mGammaLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 839
    iget v0, p0, mSaturationLoc:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 840
    iget v0, p0, mScaleLoc:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 843
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 844
    const v0, 0x8d65

    iget-object v4, p0, mTexNames:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 847
    iget-object v0, p0, mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 848
    iget v0, p0, mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 849
    iget v0, p0, mVertexLoc:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 851
    iget-object v0, p0, mGLBuffers:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 852
    iget v0, p0, mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 853
    iget v0, p0, mTexCoordLoc:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 855
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 858
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 859
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 860
    return-void
.end method

.method private initGLBuffers()Z
    .registers 12

    .prologue
    const/16 v10, 0x2600

    const v9, 0x8892

    const v7, 0x8d65

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 483
    iget-object v2, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 487
    iget-object v2, p0, mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, mDisplayWidth:I

    int-to-float v5, v5

    iget v6, p0, mDisplayHeight:I

    int-to-float v6, v6

    invoke-static {v2, v3, v4, v5, v6}, setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 490
    iget-object v2, p0, mTexNames:[I

    aget v2, v2, v1

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 491
    const/16 v2, 0x2800

    invoke-static {v7, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 493
    const/16 v2, 0x2801

    invoke-static {v7, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 495
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v7, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 497
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v7, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 499
    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 502
    const/4 v2, 0x2

    iget-object v3, p0, mGLBuffers:[I

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 505
    iget-object v2, p0, mGLBuffers:[I

    aget v2, v2, v1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 506
    iget-object v2, p0, mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v9, v2, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 510
    iget-object v2, p0, mGLBuffers:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 511
    iget-object v2, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v9, v2, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 514
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 517
    iget v2, p0, mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c2

    .line 519
    iget-object v2, p0, mTex1D:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 520
    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 522
    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 524
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 526
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 528
    iget-object v2, p0, sine80Tex:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 529
    .local v8, "byteBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v2, "glteximage2d"

    invoke-static {v2}, checkGlErrors(Ljava/lang/String;)Z

    .line 530
    const/16 v2, 0x1909

    iget-object v3, p0, sine80Tex:[B

    array-length v3, v3

    const/4 v4, 0x1

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 531
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 532
    const-string/jumbo v0, "glteximage2dBindTexture"

    invoke-static {v0}, checkGlErrors(Ljava/lang/String;)Z

    .line 536
    .end local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_c2
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v1, "ColorFade : initGLBuffers"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const v5, 0x8b31

    const v4, 0x8b30

    const/4 v2, 0x0

    .line 401
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 406
    iget v3, p0, mMode:I

    if-ne v3, v6, :cond_28

    .line 407
    const v3, 0x110001b

    invoke-direct {p0, p1, v3, v5}, loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 409
    .local v1, "vshader":I
    const v3, 0x110001a

    invoke-direct {p0, p1, v3, v4}, loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 426
    .local v0, "fshader":I
    :goto_20
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 427
    if-eqz v1, :cond_27

    if-nez v0, :cond_4a

    .line 473
    :cond_27
    :goto_27
    return v2

    .line 412
    .end local v0    # "fshader":I
    .end local v1    # "vshader":I
    :cond_28
    iget v3, p0, mMode:I

    if-ne v3, v7, :cond_3b

    .line 414
    const v3, 0x110001d

    invoke-direct {p0, p1, v3, v5}, loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 416
    .restart local v1    # "vshader":I
    const v3, 0x110001c

    invoke-direct {p0, p1, v3, v4}, loadShader(Landroid/content/Context;II)I

    move-result v0

    .restart local v0    # "fshader":I
    goto :goto_20

    .line 420
    .end local v0    # "fshader":I
    .end local v1    # "vshader":I
    :cond_3b
    const v3, 0x1100004

    invoke-direct {p0, p1, v3, v5}, loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 422
    .restart local v1    # "vshader":I
    const v3, 0x1100003

    invoke-direct {p0, p1, v3, v4}, loadShader(Landroid/content/Context;II)I

    move-result v0

    .restart local v0    # "fshader":I
    goto :goto_20

    .line 429
    :cond_4a
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, mProgram:I

    .line 431
    iget v3, p0, mProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 432
    iget v3, p0, mProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 433
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 434
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 436
    iget v3, p0, mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 438
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mVertexLoc:I

    .line 439
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "uv"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mTexCoordLoc:I

    .line 441
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "proj_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mProjMatrixLoc:I

    .line 442
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "tex_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mTexMatrixLoc:I

    .line 444
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "opacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mOpacityLoc:I

    .line 445
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "gamma"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mGammaLoc:I

    .line 446
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "saturation"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mSaturationLoc:I

    .line 447
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "scale"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mScaleLoc:I

    .line 448
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "texUnit"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mTexUnitLoc:I

    .line 451
    iget v3, p0, mMode:I

    if-ne v3, v6, :cond_104

    .line 452
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "dev_dim"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mDeviceDimLoc:I

    .line 453
    iget v3, p0, mProgram:I

    const-string v4, "collapse"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mCollapseLoc:I

    .line 454
    iget v3, p0, mProgram:I

    const-string v4, "alphaStep"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mAlphaLoc:I

    .line 466
    :cond_eb
    :goto_eb
    iget v3, p0, mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 467
    iget v3, p0, mTexUnitLoc:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 468
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 471
    iget-object v2, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v3, "ColorFade : initGLShaders"

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 473
    const/4 v2, 0x1

    goto/16 :goto_27

    .line 456
    :cond_104
    iget v3, p0, mMode:I

    if-ne v3, v7, :cond_eb

    .line 457
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "dev_dim"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mDeviceDimLoc:I

    .line 458
    iget v3, p0, mProgram:I

    const-string v4, "collapse"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mCollapseLoc:I

    .line 459
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "opacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mOpacity:I

    .line 460
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "feather"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mFeather:I

    .line 461
    iget v3, p0, mProgram:I

    const-string/jumbo v4, "gradient"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, mTex1DLoc:I

    goto :goto_eb
.end method

.method private loadShader(Landroid/content/Context;II)I
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 372
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 375
    invoke-direct {p0, p1, p2}, readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "source":Ljava/lang/String;
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v4, "ColorFade : readFile"

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 381
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 383
    .local v1, "shader":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 384
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 386
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 387
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v5}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 388
    aget v3, v0, v5

    if-nez v3, :cond_68

    .line 389
    const-string v3, "ColorFade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v3, "ColorFade"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v3, "ColorFade"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 393
    const/4 v1, 0x0

    .line 396
    :cond_68
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 1197
    const-string v0, "ColorFade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    return-void
.end method

.method private ortho(FFFFFF)V
    .registers 12
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "znear"    # F
    .param p6, "zfar"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 863
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x0

    sub-float v2, p2, p1

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 864
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 865
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x2

    aput v4, v0, v1

    .line 866
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 867
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 868
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x5

    sub-float v2, p4, p3

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 869
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 870
    iget-object v0, p0, mProjMatrix:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 871
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 872
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 873
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0xa

    const/high16 v2, -0x40000000    # -2.0f

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 874
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 875
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0xc

    add-float v2, p2, p1

    neg-float v2, v2

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 876
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0xd

    add-float v2, p4, p3

    neg-float v2, v2

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 877
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0xe

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 878
    iget-object v0, p0, mProjMatrix:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 879
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 361
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 362
    .local v1, "stream":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v2

    .line 364
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_17
    move-exception v0

    .line 365
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ColorFade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 552
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 553
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 554
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 555
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 556
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 557
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 558
    return-void
.end method

.method private setupGradientTexture()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 883
    invoke-direct {p0}, attachEglContext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 897
    :goto_8
    return v0

    .line 887
    :cond_9
    :try_start_9
    iget-boolean v2, p0, mTex1DGenerated:Z

    if-nez v2, :cond_24

    .line 888
    const/4 v2, 0x1

    iget-object v3, p0, mTex1D:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 889
    const-string/jumbo v2, "glGenTextures"

    invoke-static {v2}, checkGlErrors(Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_29

    move-result v2

    if-eqz v2, :cond_21

    .line 895
    invoke-direct {p0}, detachEglContext()V

    goto :goto_8

    .line 892
    :cond_21
    const/4 v0, 0x1

    :try_start_22
    iput-boolean v0, p0, mTex1DGenerated:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_29

    .line 895
    :cond_24
    invoke-direct {p0}, detachEglContext()V

    move v0, v1

    .line 897
    goto :goto_8

    .line 895
    :catchall_29
    move-exception v0

    invoke-direct {p0}, detachEglContext()V

    throw v0
.end method

.method private showSurface(F)Z
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 1149
    iget-boolean v0, p0, mSurfaceVisible:Z

    if-eqz v0, :cond_b

    iget v0, p0, mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_27

    .line 1150
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1152
    :try_start_e
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1153
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1154
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_28

    .line 1156
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1158
    iput-boolean v2, p0, mSurfaceVisible:Z

    .line 1159
    iput p1, p0, mSurfaceAlpha:F

    .line 1161
    :cond_27
    return v2

    .line 1156
    :catchall_28
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .registers 5

    .prologue
    .line 603
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 609
    iget-boolean v0, p0, mPrepared:Z

    if-eqz v0, :cond_12

    .line 610
    invoke-virtual {p0}, dismissResources()V

    .line 611
    invoke-direct {p0}, destroySurface()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, mPrepared:Z

    .line 615
    :cond_12
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v1, "ColorFade : dismiss"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 617
    return-void
.end method

.method public dismissResources()V
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, mCreatedResources:Z

    if-eqz v0, :cond_1f

    .line 572
    invoke-direct {p0}, attachEglContext()Z

    .line 575
    :try_start_7
    invoke-direct {p0}, destroyGradientTexture()V

    .line 577
    invoke-direct {p0}, destroyScreenshotTexture()V

    .line 578
    invoke-direct {p0}, destroyGLShaders()V

    .line 579
    invoke-direct {p0}, destroyGLBuffers()V

    .line 580
    invoke-direct {p0}, destroyEglSurface()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_20

    .line 582
    invoke-direct {p0}, detachEglContext()V

    .line 586
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, mCreatedResources:Z

    .line 589
    :cond_1f
    return-void

    .line 582
    :catchall_20
    move-exception v0

    invoke-direct {p0}, detachEglContext()V

    throw v0
.end method

.method public draw(F)Z
    .registers 22
    .param p1, "level"    # F

    .prologue
    .line 631
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPrepared:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    .line 632
    const/16 v16, 0x0

    .line 701
    :goto_a
    return v16

    .line 635
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_26

    .line 636
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, showSurface(F)Z

    move-result v16

    goto :goto_a

    .line 639
    :cond_26
    invoke-direct/range {p0 .. p0}, attachEglContext()Z

    move-result v16

    if-nez v16, :cond_2f

    .line 640
    const/16 v16, 0x0

    goto :goto_a

    .line 644
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v7

    .line 645
    .local v7, "mDisplay":[Landroid/view/Display;
    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_bc

    .line 646
    const/4 v2, 0x6

    .line 647
    .local v2, "CLEAR_FRAME_COUNT":I
    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_61

    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_bc

    :cond_61
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_bc

    .line 649
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_70
    if-ge v6, v2, :cond_a0

    .line 650
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    :try_start_7a
    invoke-static/range {v16 .. v19}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 651
    const/16 v16, 0x4000

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glClear(I)V

    .line 652
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, mEglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mEglSurface:Landroid/opengl/EGLSurface;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 654
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, showSurface(F)Z

    .line 649
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 656
    :cond_a0
    const-string/jumbo v16, "drawFrame"

    invoke-static/range {v16 .. v16}, checkGlErrors(Ljava/lang/String;)Z
    :try_end_a6
    .catchall {:try_start_7a .. :try_end_a6} :catchall_b7

    move-result v16

    if-eqz v16, :cond_b0

    .line 657
    const/16 v16, 0x0

    .line 660
    invoke-direct/range {p0 .. p0}, detachEglContext()V

    goto/16 :goto_a

    :cond_b0
    invoke-direct/range {p0 .. p0}, detachEglContext()V

    .line 662
    const/16 v16, 0x1

    goto/16 :goto_a

    .line 660
    :catchall_b7
    move-exception v16

    invoke-direct/range {p0 .. p0}, detachEglContext()V

    throw v16

    .line 669
    .end local v2    # "CLEAR_FRAME_COUNT":I
    .end local v6    # "i":I
    :cond_bc
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    :try_start_c4
    invoke-static/range {v16 .. v19}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 670
    const/16 v16, 0x4000

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glClear(I)V

    .line 673
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p1

    move/from16 v0, v16

    float-to-double v8, v0

    .line 674
    .local v8, "one_minus_level":D
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 675
    .local v4, "cos":D
    const-wide/16 v16, 0x0

    cmpg-double v16, v4, v16

    if-gez v16, :cond_180

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 676
    .local v14, "sign":D
    :goto_e6
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v10, v16, v17

    .line 677
    .local v10, "opacity":F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    .line 678
    .local v11, "saturation":F
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    const-wide v18, 0x3fb999999999999aL    # 0.1

    mul-double v16, v16, v18

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 679
    .local v13, "scale":F
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v14

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    mul-double v16, v16, v18

    const-wide v18, 0x3fb999999999999aL    # 0.1

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 681
    .local v3, "gamma":F
    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_184

    .line 682
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 683
    .local v12, "saturationCollapse":F
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, drawEdgeCollapse(F)V

    .line 693
    .end local v12    # "saturationCollapse":F
    :goto_170
    const-string/jumbo v16, "drawFrame"

    invoke-static/range {v16 .. v16}, checkGlErrors(Ljava/lang/String;)Z
    :try_end_176
    .catchall {:try_start_c4 .. :try_end_176} :catchall_196

    move-result v16

    if-eqz v16, :cond_1a7

    .line 694
    const/16 v16, 0x0

    .line 699
    invoke-direct/range {p0 .. p0}, detachEglContext()V

    goto/16 :goto_a

    .line 675
    .end local v3    # "gamma":F
    .end local v10    # "opacity":F
    .end local v11    # "saturation":F
    .end local v13    # "scale":F
    .end local v14    # "sign":D
    :cond_180
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_e6

    .line 685
    .restart local v3    # "gamma":F
    .restart local v10    # "opacity":F
    .restart local v11    # "saturation":F
    .restart local v13    # "scale":F
    .restart local v14    # "sign":D
    :cond_184
    :try_start_184
    move-object/from16 v0, p0

    iget v0, v0, mMode:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19b

    .line 686
    invoke-direct/range {p0 .. p1}, drawEdgeUnite(F)V
    :try_end_195
    .catchall {:try_start_184 .. :try_end_195} :catchall_196

    goto :goto_170

    .line 699
    .end local v3    # "gamma":F
    .end local v4    # "cos":D
    .end local v8    # "one_minus_level":D
    .end local v10    # "opacity":F
    .end local v11    # "saturation":F
    .end local v13    # "scale":F
    .end local v14    # "sign":D
    :catchall_196
    move-exception v16

    invoke-direct/range {p0 .. p0}, detachEglContext()V

    throw v16

    .line 689
    .restart local v3    # "gamma":F
    .restart local v4    # "cos":D
    .restart local v8    # "one_minus_level":D
    .restart local v10    # "opacity":F
    .restart local v11    # "saturation":F
    .restart local v13    # "scale":F
    .restart local v14    # "sign":D
    :cond_19b
    const/high16 v16, 0x3f800000    # 1.0f

    div-float v16, v16, v3

    :try_start_19f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v10, v1, v11, v13}, drawFaded(FFFF)V

    goto :goto_170

    .line 697
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, mEglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mEglSurface:Landroid/opengl/EGLSurface;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1b6
    .catchall {:try_start_19f .. :try_end_1b6} :catchall_196

    .line 699
    invoke-direct/range {p0 .. p0}, detachEglContext()V

    .line 701
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, showSurface(F)Z

    move-result v16

    goto/16 :goto_a
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1217
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1218
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public interpol_SineIn33Interpolation_getStep(F)F
    .registers 15
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 199
    div-float v0, p1, v11

    .line 200
    .local v0, "_loc_5":F
    sget-object v6, segmentsSIn33:[[F

    array-length v1, v6

    .line 201
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 202
    .local v4, "_loc_9":I
    sget-object v6, segmentsSIn33:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    sget-object v6, segmentsSIn33:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 204
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 205
    .local v2, "_loc_7":F
    sget-object v6, segmentsSIn33:[[F

    aget-object v3, v6, v4

    .line 206
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 207
    .local v5, "ret":F
    return v5
.end method

.method public interpol_SineInOut70Interpolation_getStep(F)F
    .registers 15
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 188
    div-float v0, p1, v11

    .line 189
    .local v0, "_loc_5":F
    sget-object v6, segments70:[[F

    array-length v1, v6

    .line 190
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 191
    .local v4, "_loc_9":I
    sget-object v6, segments70:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    sget-object v6, segments70:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 192
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 193
    .local v2, "_loc_7":F
    sget-object v6, segments70:[[F

    aget-object v3, v6, v4

    .line 194
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 195
    .local v5, "ret":F
    return v5
.end method

.method public interpol_SineInOut80Interpolation_getStep(F)F
    .registers 15
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 243
    div-float v0, p1, v11

    .line 244
    .local v0, "_loc_5":F
    sget-object v6, segments80:[[F

    array-length v1, v6

    .line 245
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 246
    .local v4, "_loc_9":I
    sget-object v6, segments80:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    sget-object v6, segments80:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 247
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 248
    .local v2, "_loc_7":F
    sget-object v6, segments80:[[F

    aget-object v3, v6, v4

    .line 249
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 250
    .local v5, "ret":F
    return v5
.end method

.method public prepare(Landroid/content/Context;I)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const-wide/16 v8, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 262
    const-string v3, "ColorFade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepare: mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 266
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 269
    iput p2, p0, mMode:I

    .line 271
    iget-boolean v3, p0, mPrepared:Z

    if-eqz v3, :cond_36

    .line 272
    const-string v3, "ColorFade"

    const-string v5, "ColorFade is already prepared"

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 356
    :goto_35
    return v3

    .line 277
    :cond_36
    const-string/jumbo v3, "display"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 283
    iget v0, p0, mDisplayId:I

    .line 298
    .local v0, "displayId":I
    iget-object v3, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 299
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->layerStack:I

    iput v3, p0, mDisplayLayerStack:I

    .line 300
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    iput v3, p0, mDisplayWidth:I

    .line 301
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v3

    iput v3, p0, mDisplayHeight:I

    .line 304
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v6, "ColorFade : getDisplayInfo"

    invoke-virtual {v3, v6, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 308
    invoke-direct {p0}, createSurface()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-direct {p0}, createEglContext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-direct {p0}, createEglSurface()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-direct {p0}, captureScreenshotTextureAndSetViewport()Z

    move-result v3

    if-nez v3, :cond_85

    .line 310
    :cond_78
    invoke-virtual {p0}, dismiss()V

    .line 311
    const-string v3, "ColorFade"

    const-string/jumbo v4, "prepare:createSurface fail !!!"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 312
    goto :goto_35

    .line 316
    :cond_85
    invoke-direct {p0}, attachEglContext()Z

    move-result v3

    if-nez v3, :cond_95

    .line 317
    const-string v3, "ColorFade"

    const-string/jumbo v4, "prepare:attachEglContext fail !!!"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 318
    goto :goto_35

    .line 321
    :cond_95
    :try_start_95
    invoke-direct {p0, p1}, initGLShaders(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-direct {p0}, initGLBuffers()Z

    move-result v3

    if-eqz v3, :cond_aa

    const-string/jumbo v3, "prepare"

    invoke-static {v3}, checkGlErrors(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 322
    :cond_aa
    invoke-direct {p0}, detachEglContext()V

    .line 323
    invoke-virtual {p0}, dismiss()V

    .line 324
    const-string v3, "ColorFade"

    const-string/jumbo v4, "prepare:initGLShaders fail !!!"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_95 .. :try_end_b8} :catchall_da

    .line 328
    invoke-direct {p0}, detachEglContext()V

    move v3, v5

    goto/16 :goto_35

    :cond_be
    invoke-direct {p0}, detachEglContext()V

    .line 332
    iput-boolean v4, p0, mCreatedResources:Z

    .line 333
    iput-boolean v4, p0, mPrepared:Z

    .line 342
    if-ne p2, v4, :cond_df

    .line 343
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c8
    const/4 v3, 0x3

    if-ge v2, v3, :cond_df

    .line 344
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, draw(F)Z

    .line 346
    iget-object v3, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v5, "ColorFade : draw"

    invoke-virtual {v3, v5, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 328
    .end local v2    # "i":I
    :catchall_da
    move-exception v3

    invoke-direct {p0}, detachEglContext()V

    throw v3

    .line 352
    :cond_df
    iget-object v3, p0, mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v5, "ColorFade prepare"

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 353
    const-string v3, "ColorFade"

    const-string v5, "ColorFade is ready"

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 356
    goto/16 :goto_35
.end method
