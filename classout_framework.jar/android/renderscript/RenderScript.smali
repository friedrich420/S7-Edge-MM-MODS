.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field public static final CREATE_FLAG_LOW_LATENCY:I = 0x2

.field public static final CREATE_FLAG_LOW_POWER:I = 0x4

.field public static final CREATE_FLAG_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final TRACE_TAG:J = 0x8000L

.field private static mProcessContextList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static registerNativeFree:Ljava/lang/reflect/Method; = null

.field static sInitialized:Z = false

.field static final sMinorVersion:J = 0x1L

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroid/renderscript/RenderScript$ContextType;

.field private mDestroyed:Z

.field mDev:J

.field mElement_ALLOCATION:Landroid/renderscript/Element;

.field mElement_A_8:Landroid/renderscript/Element;

.field mElement_BOOLEAN:Landroid/renderscript/Element;

.field mElement_CHAR_2:Landroid/renderscript/Element;

.field mElement_CHAR_3:Landroid/renderscript/Element;

.field mElement_CHAR_4:Landroid/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/renderscript/Element;

.field mElement_ELEMENT:Landroid/renderscript/Element;

.field mElement_F16:Landroid/renderscript/Element;

.field mElement_F32:Landroid/renderscript/Element;

.field mElement_F64:Landroid/renderscript/Element;

.field mElement_FLOAT_2:Landroid/renderscript/Element;

.field mElement_FLOAT_3:Landroid/renderscript/Element;

.field mElement_FLOAT_4:Landroid/renderscript/Element;

.field mElement_FONT:Landroid/renderscript/Element;

.field mElement_HALF_2:Landroid/renderscript/Element;

.field mElement_HALF_3:Landroid/renderscript/Element;

.field mElement_HALF_4:Landroid/renderscript/Element;

.field mElement_I16:Landroid/renderscript/Element;

.field mElement_I32:Landroid/renderscript/Element;

.field mElement_I64:Landroid/renderscript/Element;

.field mElement_I8:Landroid/renderscript/Element;

.field mElement_INT_2:Landroid/renderscript/Element;

.field mElement_INT_3:Landroid/renderscript/Element;

.field mElement_INT_4:Landroid/renderscript/Element;

.field mElement_LONG_2:Landroid/renderscript/Element;

.field mElement_LONG_3:Landroid/renderscript/Element;

.field mElement_LONG_4:Landroid/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field mElement_MESH:Landroid/renderscript/Element;

.field mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field mElement_RGBA_4444:Landroid/renderscript/Element;

.field mElement_RGBA_5551:Landroid/renderscript/Element;

.field mElement_RGBA_8888:Landroid/renderscript/Element;

.field mElement_RGB_565:Landroid/renderscript/Element;

.field mElement_RGB_888:Landroid/renderscript/Element;

.field mElement_SAMPLER:Landroid/renderscript/Element;

.field mElement_SCRIPT:Landroid/renderscript/Element;

.field mElement_SHORT_2:Landroid/renderscript/Element;

.field mElement_SHORT_3:Landroid/renderscript/Element;

.field mElement_SHORT_4:Landroid/renderscript/Element;

.field mElement_TYPE:Landroid/renderscript/Element;

.field mElement_U16:Landroid/renderscript/Element;

.field mElement_U32:Landroid/renderscript/Element;

.field mElement_U64:Landroid/renderscript/Element;

.field mElement_U8:Landroid/renderscript/Element;

.field mElement_UCHAR_2:Landroid/renderscript/Element;

.field mElement_UCHAR_3:Landroid/renderscript/Element;

.field mElement_UCHAR_4:Landroid/renderscript/Element;

.field mElement_UINT_2:Landroid/renderscript/Element;

.field mElement_UINT_3:Landroid/renderscript/Element;

.field mElement_UINT_4:Landroid/renderscript/Element;

.field mElement_ULONG_2:Landroid/renderscript/Element;

.field mElement_ULONG_3:Landroid/renderscript/Element;

.field mElement_ULONG_4:Landroid/renderscript/Element;

.field mElement_USHORT_2:Landroid/renderscript/Element;

.field mElement_USHORT_3:Landroid/renderscript/Element;

.field mElement_USHORT_4:Landroid/renderscript/Element;

.field mElement_YUV:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field private mIsProcessContext:Z

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, mProcessContextList:Ljava/util/ArrayList;

    .line 98
    sput-boolean v4, sInitialized:Z

    .line 99
    const-string v3, "config.disable_renderscript"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 101
    :try_start_12
    const-string v3, "dalvik.system.VMRuntime"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 102
    .local v2, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getRuntime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, "get_runtime":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, sRuntime:Ljava/lang/Object;

    .line 104
    const-string/jumbo v3, "registerNativeAllocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 105
    const-string/jumbo v3, "registerNativeFree"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4d} :catch_60

    .line 111
    :try_start_4d
    const-string/jumbo v3, "rs_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 112
    invoke-static {}, _nInit()V

    .line 113
    const/4 v3, 0x1

    sput-boolean v3, sInitialized:Z

    .line 114
    invoke-static {}, rsnSystemGetPointerSize()I

    move-result v3

    sput v3, sPointerSize:I
    :try_end_5f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4d .. :try_end_5f} :catch_92

    .line 120
    :cond_5f
    return-void

    .line 106
    .end local v1    # "get_runtime":Ljava/lang/reflect/Method;
    :catch_60
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading GC methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading GC methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "get_runtime":Ljava/lang/reflect/Method;
    :catch_92
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading RS jni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading RS jni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, mIsProcessContext:Z

    .line 54
    iput v1, p0, mContextFlags:I

    .line 55
    iput v1, p0, mContextSdkVersion:I

    .line 994
    iput-boolean v1, p0, mDestroyed:Z

    .line 1128
    iput-object v2, p0, mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1168
    iput-object v2, p0, mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1324
    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v1, p0, mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1325
    if-eqz p1, :cond_1d

    .line 1326
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, mApplicationContext:Landroid/content/Context;

    .line 1328
    :cond_1d
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1330
    :try_start_24
    sget-object v1, registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x400000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_37} :catch_38

    .line 1336
    return-void

    .line 1331
    :catch_38
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1395
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .prologue
    .line 1448
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    .prologue
    .line 1461
    const/16 v2, 0x17

    if-ge p1, v2, :cond_9

    .line 1462
    invoke-static {p0, p1, p2, p3}, internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 1478
    :goto_8
    return-object v1

    .line 1465
    :cond_9
    sget-object v3, mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1466
    :try_start_c
    sget-object v2, mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/RenderScript;

    .line 1467
    .local v1, "prs":Landroid/renderscript/RenderScript;
    iget-object v2, v1, mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-ne v2, p2, :cond_12

    iget v2, v1, mContextFlags:I

    if-ne v2, p3, :cond_12

    iget v2, v1, mContextSdkVersion:I

    if-ne v2, p1, :cond_12

    .line 1471
    monitor-exit v3

    goto :goto_8

    .line 1479
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "prs":Landroid/renderscript/RenderScript;
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw v2

    .line 1475
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    invoke-static {p0, p1, p2, p3}, internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 1476
    .restart local v1    # "prs":Landroid/renderscript/RenderScript;
    const/4 v2, 0x1

    iput-boolean v2, v1, mIsProcessContext:Z

    .line 1477
    sget-object v2, mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_2c

    goto :goto_8
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;

    .prologue
    .line 1408
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I

    .prologue
    .line 1433
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1434
    .local v0, "v":I
    invoke-static {p0, v0, p1, p2}, create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I
    .param p3, "API_number"    # I

    .prologue
    .line 1523
    invoke-static {p0, p3, p1, p2}, internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static getMinorID()J
    .registers 2

    .prologue
    .line 146
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static getMinorVersion()J
    .registers 2

    .prologue
    .line 158
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private helpDestroy()V
    .registers 7

    .prologue
    .line 1547
    const/4 v3, 0x0

    .line 1548
    .local v3, "shouldDestroy":Z
    monitor-enter p0

    .line 1549
    :try_start_2
    iget-boolean v4, p0, mDestroyed:Z

    if-nez v4, :cond_a

    .line 1550
    const/4 v3, 0x1

    .line 1551
    const/4 v4, 0x1

    iput-boolean v4, p0, mDestroyed:Z

    .line 1553
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_25

    .line 1555
    if-eqz v3, :cond_47

    .line 1556
    invoke-virtual {p0}, nContextFinish()V

    .line 1558
    iget-wide v4, p0, mContext:J

    invoke-virtual {p0, v4, v5}, nContextDeinitToClient(J)V

    .line 1559
    iget-object v4, p0, mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1563
    const/4 v1, 0x0

    .local v1, "hasJoined":Z
    const/4 v2, 0x0

    .line 1564
    .local v2, "interrupted":Z
    :goto_1c
    if-nez v1, :cond_2b

    .line 1566
    :try_start_1e
    iget-object v4, p0, mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_28

    .line 1567
    const/4 v1, 0x1

    goto :goto_1c

    .line 1553
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v4

    .line 1568
    .restart local v1    # "hasJoined":Z
    .restart local v2    # "interrupted":Z
    :catch_28
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 1570
    goto :goto_1c

    .line 1572
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2b
    if-eqz v2, :cond_3b

    .line 1573
    const-string v4, "RenderScript_jni"

    const-string v5, "Interrupted during wait for MessageThread to join"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1577
    :cond_3b
    invoke-virtual {p0}, nContextDestroy()V

    .line 1579
    iget-wide v4, p0, mDev:J

    invoke-virtual {p0, v4, v5}, nDeviceDestroy(J)V

    .line 1580
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mDev:J

    .line 1582
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :cond_47
    return-void
.end method

.method private static internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    .prologue
    .line 1354
    sget-boolean v2, sInitialized:Z

    if-nez v2, :cond_d

    .line 1355
    const-string v2, "RenderScript_jni"

    const-string v3, "RenderScript.create() called when disabled; someone is likely to crash"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/4 v1, 0x0

    .line 1383
    :goto_c
    return-object v1

    .line 1359
    :cond_d
    and-int/lit8 v2, p3, -0x7

    if-eqz v2, :cond_19

    .line 1360
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Invalid flags passed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1363
    :cond_19
    new-instance v1, Landroid/renderscript/RenderScript;

    invoke-direct {v1, p0}, <init>(Landroid/content/Context;)V

    .line 1365
    .local v1, "rs":Landroid/renderscript/RenderScript;
    invoke-virtual {v1}, nDeviceCreate()J

    move-result-wide v2

    iput-wide v2, v1, mDev:J

    .line 1366
    iget-wide v2, v1, mDev:J

    iget v6, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    move v4, p3

    move v5, p1

    invoke-virtual/range {v1 .. v6}, nContextCreate(JIII)J

    move-result-wide v2

    iput-wide v2, v1, mContext:J

    .line 1367
    iput-object p2, v1, mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1368
    iput p3, v1, mContextFlags:I

    .line 1369
    iput p1, v1, mContextSdkVersion:I

    .line 1370
    iget-wide v2, v1, mContext:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_46

    .line 1371
    new-instance v2, Landroid/renderscript/RSDriverException;

    const-string v3, "Failed to create RS context."

    invoke-direct {v2, v3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1375
    :cond_46
    const-string v0, "com.android.renderscript.cache"

    .line 1376
    .local v0, "CACHE_PATH":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    const-string v3, "com.android.renderscript.cache"

    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1377
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1378
    .local v8, "mCachePath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1379
    invoke-virtual {v1, v8}, nContextSetCacheDir(Ljava/lang/String;)V

    .line 1381
    new-instance v2, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v2, v1}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v2, v1, mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 1382
    iget-object v2, v1, mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    goto :goto_c
.end method

.method public static releaseAllContexts()V
    .registers 5

    .prologue
    .line 1496
    sget-object v4, mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1497
    :try_start_3
    sget-object v1, mProcessContextList:Ljava/util/ArrayList;

    .line 1498
    .local v1, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/RenderScript;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, mProcessContextList:Ljava/util/ArrayList;

    .line 1499
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    .line 1501
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    .line 1502
    .local v2, "prs":Landroid/renderscript/RenderScript;
    const/4 v3, 0x0

    iput-boolean v3, v2, mIsProcessContext:Z

    .line 1503
    invoke-virtual {v2}, destroy()V

    goto :goto_11

    .line 1499
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "prs":Landroid/renderscript/RenderScript;
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v3

    .line 1505
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1506
    return-void
.end method

.method static native rsnSystemGetPointerSize()I
.end method


# virtual methods
.method public contextDump()V
    .registers 2

    .prologue
    .line 1533
    invoke-virtual {p0}, validate()V

    .line 1534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, nContextDump(I)V

    .line 1535
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 1601
    iget-boolean v0, p0, mIsProcessContext:Z

    if-eqz v0, :cond_5

    .line 1607
    :goto_4
    return-void

    .line 1605
    :cond_5
    invoke-virtual {p0}, validate()V

    .line 1606
    invoke-direct {p0}, helpDestroy()V

    goto :goto_4
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1585
    invoke-direct {p0}, helpDestroy()V

    .line 1586
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1587
    return-void
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 1543
    invoke-virtual {p0}, nContextFinish()V

    .line 1544
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1344
    iget-object v0, p0, mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .registers 2

    .prologue
    .line 1174
    iget-object v0, p0, mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .registers 2

    .prologue
    .line 1134
    iget-object v0, p0, mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .registers 5

    .prologue
    .line 1610
    iget-wide v0, p0, mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method declared-synchronized nAllocationAdapterCreate(JJ)J
    .registers 14
    .param p1, "allocId"    # J
    .param p3, "typeId"    # J

    .prologue
    .line 644
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 645
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, rsnAllocationAdapterCreate(JJJ)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 644
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationAdapterOffset(JIIIIIIIII)V
    .registers 27
    .param p1, "id"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mip"    # I
    .param p7, "face"    # I
    .param p8, "a1"    # I
    .param p9, "a2"    # I
    .param p10, "a3"    # I
    .param p11, "a4"    # I

    .prologue
    .line 652
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 653
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v1 .. v14}, rsnAllocationAdapterOffset(JJIIIIIIIII)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 654
    monitor-exit p0

    return-void

    .line 652
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 504
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 505
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 466
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 467
    monitor-exit p0

    return-void

    .line 465
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 444
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 443
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .registers 11
    .param p1, "type"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 455
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 454
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)J
    .registers 11
    .param p1, "mips"    # I
    .param p2, "assetStream"    # I
    .param p3, "usage"    # I

    .prologue
    .line 459
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 460
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationCreateFromAssetStream(JIII)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 459
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    .prologue
    .line 437
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 438
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 437
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(JIIJ)J
    .registers 18
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "usage"    # I
    .param p5, "pointer"    # J

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 433
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, rsnAllocationCreateTyped(JJIIJ)J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 432
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 450
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 449
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 28
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 514
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v0, p8

    iget v13, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 515
    monitor-exit p0

    return-void

    .line 513
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .registers 36
    .param p1, "dstAlloc"    # J
    .param p3, "dstXoff"    # I
    .param p4, "dstYoff"    # I
    .param p5, "dstMip"    # I
    .param p6, "dstFace"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "srcAlloc"    # J
    .param p11, "srcXoff"    # I
    .param p12, "srcYoff"    # I
    .param p13, "srcMip"    # I
    .param p14, "srcFace"    # I

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 535
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    invoke-virtual/range {v3 .. v19}, rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 541
    monitor-exit p0

    return-void

    .line 534
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 33
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "d"    # Ljava/lang/Object;
    .param p10, "sizeBytes"    # I
    .param p11, "dt"    # Landroid/renderscript/Element$DataType;
    .param p12, "mSize"    # I
    .param p13, "usePadding"    # Z

    .prologue
    .line 549
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 550
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v0, p11

    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    move/from16 v16, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-virtual/range {v3 .. v18}, rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 551
    monitor-exit p0

    return-void

    .line 549
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .registers 19
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 555
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 556
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 557
    monitor-exit p0

    return-void

    .line 555
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .registers 37
    .param p1, "dstAlloc"    # J
    .param p3, "dstXoff"    # I
    .param p4, "dstYoff"    # I
    .param p5, "dstZoff"    # I
    .param p6, "dstMip"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "depth"    # I
    .param p10, "srcAlloc"    # J
    .param p12, "srcXoff"    # I
    .param p13, "srcYoff"    # I
    .param p14, "srcZoff"    # I
    .param p15, "srcMip"    # I

    .prologue
    .line 570
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 571
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    invoke-virtual/range {v3 .. v20}, rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 575
    monitor-exit p0

    return-void

    .line 570
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 36
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "depth"    # I
    .param p10, "d"    # Ljava/lang/Object;
    .param p11, "sizeBytes"    # I
    .param p12, "dt"    # Landroid/renderscript/Element$DataType;
    .param p13, "mSize"    # I
    .param p14, "usePadding"    # Z

    .prologue
    .line 583
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 584
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v0, p12

    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    move/from16 v17, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v18, p13

    move/from16 v19, p14

    invoke-virtual/range {v3 .. v19}, rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 586
    monitor-exit p0

    return-void

    .line 583
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationElementData(JIIIII[BI)V
    .registers 23
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "compIdx"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    .prologue
    .line 519
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 520
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, rsnAllocationElementData(JJIIIII[BI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 521
    monitor-exit p0

    return-void

    .line 519
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementRead(JIIIII[BI)V
    .registers 23
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "compIdx"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    .prologue
    .line 606
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 607
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, rsnAllocationElementRead(JJIIIII[BI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 608
    monitor-exit p0

    return-void

    .line 606
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(J)V
    .registers 6
    .param p1, "alloc"    # J

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 500
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnAllocationGenerateMipmaps(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 501
    monitor-exit p0

    return-void

    .line 499
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetSurface(J)Landroid/view/Surface;
    .registers 6
    .param p1, "alloc"    # J

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 478
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnAllocationGetSurface(JJ)Landroid/view/Surface;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 477
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(J)J
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 632
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 633
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnAllocationGetType(JJ)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 632
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoReceive(J)V
    .registers 6
    .param p1, "alloc"    # J

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 493
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnAllocationIoReceive(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 494
    monitor-exit p0

    return-void

    .line 492
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoSend(J)V
    .registers 6
    .param p1, "alloc"    # J

    .prologue
    .line 487
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 488
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnAllocationIoSend(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 489
    monitor-exit p0

    return-void

    .line 487
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    .registers 18
    .param p1, "id"    # J
    .param p3, "d"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "mSize"    # I
    .param p6, "usePadding"    # Z

    .prologue
    .line 590
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 591
    iget-wide v2, p0, mContext:J

    iget v7, p4, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 592
    monitor-exit p0

    return-void

    .line 590
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 28
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    .prologue
    .line 598
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 599
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v0, p8

    iget v13, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 600
    monitor-exit p0

    return-void

    .line 598
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 33
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "d"    # Ljava/lang/Object;
    .param p10, "sizeBytes"    # I
    .param p11, "dt"    # Landroid/renderscript/Element$DataType;
    .param p12, "mSize"    # I
    .param p13, "usePadding"    # Z

    .prologue
    .line 616
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 617
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v0, p11

    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    move/from16 v16, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-virtual/range {v3 .. v18}, rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 618
    monitor-exit p0

    return-void

    .line 616
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 36
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "depth"    # I
    .param p10, "d"    # Ljava/lang/Object;
    .param p11, "sizeBytes"    # I
    .param p12, "dt"    # Landroid/renderscript/Element$DataType;
    .param p13, "mSize"    # I
    .param p14, "usePadding"    # Z

    .prologue
    .line 626
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 627
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v0, p12

    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    move/from16 v17, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v18, p13

    move/from16 v19, p14

    invoke-virtual/range {v3 .. v19}, rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 628
    monitor-exit p0

    return-void

    .line 626
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationResize1D(JI)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "dimX"    # I

    .prologue
    .line 638
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 639
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationResize1D(JJI)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 640
    monitor-exit p0

    return-void

    .line 638
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "sur"    # Landroid/view/Surface;

    .prologue
    .line 482
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 483
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 484
    monitor-exit p0

    return-void

    .line 482
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(JI)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "src"    # I

    .prologue
    .line 472
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 473
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAllocationSyncAll(JJI)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 474
    monitor-exit p0

    return-void

    .line 472
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAssignName(J[B)V
    .registers 11
    .param p1, "obj"    # J
    .param p3, "name"    # [B

    .prologue
    .line 377
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 378
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnAssignName(JJ[B)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 379
    monitor-exit p0

    return-void

    .line 377
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .registers 29
    .param p1, "kernelID"    # J
    .param p3, "returnValue"    # J
    .param p5, "fieldIDs"    # [J
    .param p6, "values"    # [J
    .param p7, "sizes"    # [I
    .param p8, "depClosures"    # [J
    .param p9, "depFieldIDs"    # [J

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 319
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide v16

    .line 321
    .local v16, "c":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_2d

    .line 322
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Failed creating closure."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2a

    .line 318
    .end local v16    # "c":J
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 324
    .restart local v16    # "c":J
    :cond_2d
    monitor-exit p0

    return-wide v16
.end method

.method declared-synchronized nClosureSetArg(JIJI)V
    .registers 17
    .param p1, "closureID"    # J
    .param p3, "index"    # I
    .param p4, "value"    # J
    .param p6, "size"    # I

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 345
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, rsnClosureSetArg(JJIJI)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 346
    monitor-exit p0

    return-void

    .line 344
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nClosureSetGlobal(JJJI)V
    .registers 19
    .param p1, "closureID"    # J
    .param p3, "fieldID"    # J
    .param p5, "value"    # J
    .param p7, "size"    # I

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 354
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, rsnClosureSetGlobal(JJJJI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 355
    monitor-exit p0

    return-void

    .line 353
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramFragment(J)V
    .registers 6
    .param p1, "pf"    # J

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 289
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextBindProgramFragment(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramRaster(J)V
    .registers 6
    .param p1, "pr"    # J

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 299
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextBindProgramRaster(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 300
    monitor-exit p0

    return-void

    .line 298
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramStore(J)V
    .registers 6
    .param p1, "pfs"    # J

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 284
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextBindProgramStore(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 285
    monitor-exit p0

    return-void

    .line 283
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramVertex(J)V
    .registers 6
    .param p1, "pv"    # J

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 294
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextBindProgramVertex(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 295
    monitor-exit p0

    return-void

    .line 293
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindRootScript(J)V
    .registers 6
    .param p1, "script"    # J

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 274
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextBindRootScript(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindSampler(II)V
    .registers 5
    .param p1, "sampler"    # I
    .param p2, "slot"    # I

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 279
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextBindSampler(JII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 280
    monitor-exit p0

    return-void

    .line 278
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(JIII)J
    .registers 9
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "contextType"    # I

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p5}, rsnContextCreate(JIII)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreateGL(JIIIIIIIIIIIIFI)J
    .registers 20
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "colorMin"    # I
    .param p6, "colorPref"    # I
    .param p7, "alphaMin"    # I
    .param p8, "alphaPref"    # I
    .param p9, "depthMin"    # I
    .param p10, "depthPref"    # I
    .param p11, "stencilMin"    # I
    .param p12, "stencilPref"    # I
    .param p13, "samplesMin"    # I
    .param p14, "samplesPref"    # I
    .param p15, "samplesQ"    # F
    .param p16, "dpi"    # I

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p16}, rsnContextCreateGL(JIIIIIIIIIIIIFI)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(J)V
.end method

.method declared-synchronized nContextDestroy()V
    .registers 7

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 224
    iget-object v3, p0, mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    .line 225
    .local v2, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 227
    iget-wide v0, p0, mContext:J

    .line 229
    .local v0, "curCon":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mContext:J

    .line 231
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 232
    invoke-virtual {p0, v0, v1}, rsnContextDestroy(J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 233
    monitor-exit p0

    return-void

    .line 220
    .end local v0    # "curCon":J
    .end local v2    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    :catchall_1b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized nContextDump(I)V
    .registers 4
    .param p1, "bits"    # I

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 257
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1}, rsnContextDump(JI)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 258
    monitor-exit p0

    return-void

    .line 256
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .registers 3

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 262
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1}, rsnContextFinish(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 263
    monitor-exit p0

    return-void

    .line 261
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(J[I)I
.end method

.method native nContextInitToClient(J)V
.end method

.method declared-synchronized nContextPause()V
    .registers 3

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 304
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1}, rsnContextPause(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 305
    monitor-exit p0

    return-void

    .line 303
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextPeekMessage(J[I)I
.end method

.method declared-synchronized nContextResume()V
    .registers 3

    .prologue
    .line 308
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 309
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1}, rsnContextResume(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 310
    monitor-exit p0

    return-void

    .line 308
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    .line 267
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 268
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnContextSendMessage(JI[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 269
    monitor-exit p0

    return-void

    .line 267
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetCacheDir(Ljava/lang/String;)V
    .registers 4
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 252
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1}, rsnContextSetCacheDir(JLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 253
    monitor-exit p0

    return-void

    .line 251
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .registers 4
    .param p1, "p"    # I

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 247
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1}, rsnContextSetPriority(JI)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 237
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnContextSetSurface(JIILandroid/view/Surface;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 238
    monitor-exit p0

    return-void

    .line 236
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 242
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 243
    monitor-exit p0

    return-void

    .line 241
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()J
.end method

.method native nDeviceDestroy(J)V
.end method

.method native nDeviceSetConfig(JII)V
.end method

.method declared-synchronized nElementCreate(JIZI)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "kind"    # I
    .param p4, "norm"    # Z
    .param p5, "vecSize"    # I

    .prologue
    .line 399
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 400
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, rsnElementCreate(JJIZI)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 399
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .registers 11
    .param p1, "elements"    # [J
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 405
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnElementCreate2(J[J[Ljava/lang/String;[I)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 404
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(J[I)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "elementData"    # [I

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 410
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnElementGetNativeData(JJ[I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 411
    monitor-exit p0

    return-void

    .line 409
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "IDs"    # [J
    .param p4, "names"    # [Ljava/lang/String;
    .param p5, "arraySizes"    # [I

    .prologue
    .line 415
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 416
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 417
    monitor-exit p0

    return-void

    .line 415
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .registers 5
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 668
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 669
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 668
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAssetStream(J)J
    .registers 6
    .param p1, "assetStream"    # J

    .prologue
    .line 658
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 659
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnFileA3DCreateFromAssetStream(JJ)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 658
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)J
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 663
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 664
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1}, rsnFileA3DCreateFromFile(JLjava/lang/String;)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 663
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetEntryByIndex(JI)J
    .registers 11
    .param p1, "fileA3D"    # J
    .param p3, "index"    # I

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 684
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnFileA3DGetEntryByIndex(JJI)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 683
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V
    .registers 15
    .param p1, "fileA3D"    # J
    .param p3, "numEntries"    # I
    .param p4, "IDs"    # [I
    .param p5, "names"    # [Ljava/lang/String;

    .prologue
    .line 678
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 679
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 680
    monitor-exit p0

    return-void

    .line 678
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetNumIndexEntries(J)I
    .registers 6
    .param p1, "fileA3D"    # J

    .prologue
    .line 673
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 674
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnFileA3DGetNumIndexEntries(JJ)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 673
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J
    .registers 13
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "dpi"    # I

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 700
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 699
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I
    .param p4, "assetStream"    # J

    .prologue
    .line 694
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 695
    iget-wide v1, p0, mContext:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 694
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)J
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I

    .prologue
    .line 689
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 690
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnFontCreateFromFile(JLjava/lang/String;FI)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 689
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nGetName(J)Ljava/lang/String;
    .registers 6
    .param p1, "obj"    # J

    .prologue
    .line 382
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 383
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnGetName(JJ)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 382
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .registers 20
    .param p1, "invokeID"    # J
    .param p3, "params"    # [B
    .param p4, "fieldIDs"    # [J
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 332
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide v10

    .line 334
    .local v10, "c":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_25

    .line 335
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Failed creating closure."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    .line 331
    .end local v10    # "c":J
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    .restart local v10    # "c":J
    :cond_25
    monitor-exit p0

    return-wide v10
.end method

.method declared-synchronized nMeshCreate([J[J[I)J
    .registers 11
    .param p1, "vtx"    # [J
    .param p2, "idx"    # [J
    .param p3, "prim"    # [I

    .prologue
    .line 908
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 909
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnMeshCreate(J[J[J[I)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 908
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndexCount(J)I
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 918
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 919
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnMeshGetIndexCount(JJ)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 918
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndices(J[J[II)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "idxIds"    # [J
    .param p4, "primitives"    # [I
    .param p5, "vtxIdCount"    # I

    .prologue
    .line 928
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 929
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, rsnMeshGetIndices(JJ[J[II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 930
    monitor-exit p0

    return-void

    .line 928
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertexBufferCount(J)I
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 913
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 914
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnMeshGetVertexBufferCount(JJ)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 913
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertices(J[JI)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "vtxIds"    # [J
    .param p4, "vtxIdCount"    # I

    .prologue
    .line 923
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 924
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, rsnMeshGetVertices(JJ[JI)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 925
    monitor-exit p0

    return-void

    .line 923
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nObjDestroy(J)V
    .registers 8
    .param p1, "id"    # J

    .prologue
    .line 392
    iget-wide v0, p0, mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 393
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnObjDestroy(JJ)V

    .line 395
    :cond_d
    return-void
.end method

.method declared-synchronized nProgramBindConstants(JIJ)V
    .registers 15
    .param p1, "pv"    # J
    .param p3, "slot"    # I
    .param p4, "mID"    # J

    .prologue
    .line 882
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 883
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, rsnProgramBindConstants(JJIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 884
    monitor-exit p0

    return-void

    .line 882
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindSampler(JIJ)V
    .registers 15
    .param p1, "vpf"    # J
    .param p3, "slot"    # I
    .param p4, "s"    # J

    .prologue
    .line 892
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 893
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, rsnProgramBindSampler(JJIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 894
    monitor-exit p0

    return-void

    .line 892
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindTexture(JIJ)V
    .registers 15
    .param p1, "vpf"    # J
    .param p3, "slot"    # I
    .param p4, "a"    # J

    .prologue
    .line 887
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 888
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, rsnProgramBindTexture(JJIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 889
    monitor-exit p0

    return-void

    .line 887
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .registers 11
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [J

    .prologue
    .line 897
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 898
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 897
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterCreate(ZI)J
    .registers 5
    .param p1, "pointSprite"    # Z
    .param p2, "cullMode"    # I

    .prologue
    .line 876
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 877
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnProgramRasterCreate(JZI)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 876
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreCreate(ZZZZZZIII)J
    .registers 23
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z
    .param p5, "depthMask"    # Z
    .param p6, "dither"    # Z
    .param p7, "srcMode"    # I
    .param p8, "dstMode"    # I
    .param p9, "depthFunc"    # I

    .prologue
    .line 869
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 870
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, rsnProgramStoreCreate(JZZZZZZIII)J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 869
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .registers 11
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [J

    .prologue
    .line 902
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 903
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 902
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)J
    .registers 17
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    .prologue
    .line 859
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 860
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, rsnSamplerCreate(JIIIIIF)J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 859
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(JJI)V
    .registers 15
    .param p1, "script"    # J
    .param p3, "alloc"    # J
    .param p5, "slot"    # I

    .prologue
    .line 706
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 707
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v1 .. v8}, rsnScriptBindAllocation(JJJI)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 708
    monitor-exit p0

    return-void

    .line 706
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .registers 13
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 804
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 803
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptFieldIDCreate(JI)J
    .registers 11
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    .prologue
    .line 827
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 828
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptFieldIDCreate(JJI)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 827
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(JI[JJ[B[I)V
    .registers 22
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "params"    # [B
    .param p8, "limits"    # [I

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 726
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 727
    monitor-exit p0

    return-void

    .line 725
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarD(JI)D
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    .prologue
    .line 774
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 775
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptGetVarD(JJI)D
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 774
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarF(JI)F
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    .prologue
    .line 764
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 765
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptGetVarF(JJI)F
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 764
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarI(JI)I
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    .prologue
    .line 742
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 743
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptGetVarI(JJI)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 742
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarJ(JI)J
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    .prologue
    .line 753
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 754
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptGetVarJ(JJI)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 753
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarV(JI[B)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B

    .prologue
    .line 784
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 785
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptGetVarV(JJI[B)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 786
    monitor-exit p0

    return-void

    .line 784
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cachePath"    # Ljava/lang/String;
    .param p3, "closures"    # [J

    .prologue
    .line 361
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 362
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v8

    .line 363
    .local v8, "g":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_1f

    .line 364
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Failed creating script group."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    .line 361
    .end local v8    # "g":J
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 366
    .restart local v8    # "g":J
    :cond_1f
    monitor-exit p0

    return-wide v8
.end method

.method declared-synchronized nScriptGroup2Execute(J)V
    .registers 6
    .param p1, "groupID"    # J

    .prologue
    .line 371
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 372
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnScriptGroup2Execute(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 373
    monitor-exit p0

    return-void

    .line 371
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .registers 15
    .param p1, "kernels"    # [J
    .param p2, "src"    # [J
    .param p3, "dstk"    # [J
    .param p4, "dstf"    # [J
    .param p5, "types"    # [J

    .prologue
    .line 833
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 834
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, rsnScriptGroupCreate(J[J[J[J[J[J)J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 833
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupExecute(J)V
    .registers 6
    .param p1, "group"    # J

    .prologue
    .line 851
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 852
    iget-wide v0, p0, mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, rsnScriptGroupExecute(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 853
    monitor-exit p0

    return-void

    .line 851
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetInput(JJJ)V
    .registers 18
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    .prologue
    .line 839
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 840
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, rsnScriptGroupSetInput(JJJJ)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 841
    monitor-exit p0

    return-void

    .line 839
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetOutput(JJJ)V
    .registers 18
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    .prologue
    .line 845
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 846
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, rsnScriptGroupSetOutput(JJJJ)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 847
    monitor-exit p0

    return-void

    .line 845
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V
    .registers 37
    .param p1, "id"    # J
    .param p3, "M"    # I
    .param p4, "N"    # I
    .param p5, "K"    # I
    .param p6, "A"    # J
    .param p8, "a_offset"    # I
    .param p9, "B"    # J
    .param p11, "b_offset"    # I
    .param p12, "C"    # J
    .param p14, "c_offset"    # I
    .param p15, "c_mult_int"    # I

    .prologue
    .line 986
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 987
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    move-wide/from16 v17, p12

    move/from16 v19, p14

    move/from16 v20, p15

    invoke-virtual/range {v3 .. v20}, rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 988
    monitor-exit p0

    return-void

    .line 986
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V
    .registers 56
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alphaX"    # F
    .param p13, "alphaY"    # F
    .param p14, "A"    # J
    .param p16, "B"    # J
    .param p18, "betaX"    # F
    .param p19, "betaY"    # F
    .param p20, "C"    # J
    .param p22, "incX"    # I
    .param p23, "incY"    # I
    .param p24, "KL"    # I
    .param p25, "KU"    # I

    .prologue
    .line 964
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 965
    move-object/from16 v0, p0

    iget-wide v3, v0, mContext:J

    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    move/from16 v22, p18

    move/from16 v23, p19

    move-wide/from16 v24, p20

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    invoke-virtual/range {v2 .. v29}, rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 966
    monitor-exit p0

    return-void

    .line 964
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V
    .registers 56
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alpha"    # D
    .param p14, "A"    # J
    .param p16, "B"    # J
    .param p18, "beta"    # D
    .param p20, "C"    # J
    .param p22, "incX"    # I
    .param p23, "incY"    # I
    .param p24, "KL"    # I
    .param p25, "KU"    # I

    .prologue
    .line 952
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 953
    move-object/from16 v0, p0

    iget-wide v3, v0, mContext:J

    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    move-wide/from16 v22, p18

    move-wide/from16 v24, p20

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    invoke-virtual/range {v2 .. v29}, rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 954
    monitor-exit p0

    return-void

    .line 952
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V
    .registers 53
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alpha"    # F
    .param p13, "A"    # J
    .param p15, "B"    # J
    .param p17, "beta"    # F
    .param p18, "C"    # J
    .param p20, "incX"    # I
    .param p21, "incY"    # I
    .param p22, "KL"    # I
    .param p23, "KU"    # I

    .prologue
    .line 940
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 941
    move-object/from16 v0, p0

    iget-wide v4, v0, mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    move/from16 v22, p17

    move-wide/from16 v23, p18

    move/from16 v25, p20

    move/from16 v26, p21

    move/from16 v27, p22

    move/from16 v28, p23

    invoke-virtual/range {v3 .. v28}, rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 942
    monitor-exit p0

    return-void

    .line 940
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V
    .registers 64
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alphaX"    # D
    .param p14, "alphaY"    # D
    .param p16, "A"    # J
    .param p18, "B"    # J
    .param p20, "betaX"    # D
    .param p22, "betaY"    # D
    .param p24, "C"    # J
    .param p26, "incX"    # I
    .param p27, "incY"    # I
    .param p28, "KL"    # I
    .param p29, "KU"    # I

    .prologue
    .line 976
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, validate()V

    .line 977
    move-object/from16 v0, p0

    iget-wide v3, v0, mContext:J

    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    move-wide/from16 v22, p18

    move-wide/from16 v24, p20

    move-wide/from16 v26, p22

    move-wide/from16 v28, p24

    move/from16 v30, p26

    move/from16 v31, p27

    move/from16 v32, p28

    move/from16 v33, p29

    invoke-virtual/range {v2 .. v33}, rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 978
    monitor-exit p0

    return-void

    .line 976
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicCreate(IJ)J
    .registers 10
    .param p1, "id"    # I
    .param p2, "eid"    # J

    .prologue
    .line 809
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 810
    iget-wide v1, p0, mContext:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, rsnScriptIntrinsicCreate(JIJ)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 809
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvoke(JI)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    .prologue
    .line 716
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 717
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptInvoke(JJI)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 718
    monitor-exit p0

    return-void

    .line 716
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeIDCreate(JI)J
    .registers 11
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    .prologue
    .line 821
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 822
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptInvokeIDCreate(JJI)J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 821
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(JI[B)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "params"    # [B

    .prologue
    .line 731
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 732
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptInvokeV(JJI[B)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 733
    monitor-exit p0

    return-void

    .line 731
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptKernelIDCreate(JII)J
    .registers 14
    .param p1, "sid"    # J
    .param p3, "slot"    # I
    .param p4, "sig"    # I

    .prologue
    .line 815
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 816
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptKernelIDCreate(JJII)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 815
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(J[B)V
    .registers 11
    .param p1, "script"    # J
    .param p3, "timeZone"    # [B

    .prologue
    .line 711
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 712
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnScriptSetTimeZone(JJ[B)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 713
    monitor-exit p0

    return-void

    .line 711
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(JID)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # D

    .prologue
    .line 769
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 770
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, rsnScriptSetVarD(JJID)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 771
    monitor-exit p0

    return-void

    .line 769
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(JIF)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # F

    .prologue
    .line 759
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 760
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptSetVarF(JJIF)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 761
    monitor-exit p0

    return-void

    .line 759
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(JII)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # I

    .prologue
    .line 737
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 738
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptSetVarI(JJII)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 739
    monitor-exit p0

    return-void

    .line 737
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(JIJ)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J

    .prologue
    .line 748
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 749
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, rsnScriptSetVarJ(JJIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 750
    monitor-exit p0

    return-void

    .line 748
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(JIJ)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J

    .prologue
    .line 796
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 797
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, rsnScriptSetVarObj(JJIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 798
    monitor-exit p0

    return-void

    .line 796
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(JI[B)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B

    .prologue
    .line 779
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 780
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, rsnScriptSetVarV(JJI[B)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 781
    monitor-exit p0

    return-void

    .line 779
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarVE(JI[BJ[I)V
    .registers 19
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B
    .param p5, "e"    # J
    .param p7, "dims"    # [I

    .prologue
    .line 791
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 792
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, rsnScriptSetVarVE(JJI[BJ[I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 793
    monitor-exit p0

    return-void

    .line 791
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(JIIIZZI)J
    .registers 22
    .param p1, "eid"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mips"    # Z
    .param p7, "faces"    # Z
    .param p8, "yuv"    # I

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 422
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, rsnTypeCreate(JJIIIZZI)J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 421
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(J[J)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "typeData"    # [J

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, validate()V

    .line 427
    iget-wide v2, p0, mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, rsnTypeGetNativeData(JJ[J)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 428
    monitor-exit p0

    return-void

    .line 426
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationAdapterCreate(JJJ)J
.end method

.method native rsnAllocationAdapterOffset(JJIIIIIIIII)V
.end method

.method native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationElementData(JJIIIII[BI)V
.end method

.method native rsnAllocationElementRead(JJIIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native rsnAllocationGetSurface(JJ)Landroid/view/Surface;
.end method

.method native rsnAllocationGetType(JJ)J
.end method

.method native rsnAllocationIoReceive(JJ)V
.end method

.method native rsnAllocationIoSend(JJ)V
.end method

.method native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationResize1D(JJI)V
.end method

.method native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native rsnAllocationSyncAll(JJI)V
.end method

.method native rsnAssignName(JJ[B)V
.end method

.method native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native rsnClosureSetArg(JJIJI)V
.end method

.method native rsnClosureSetGlobal(JJJJI)V
.end method

.method native rsnContextBindProgramFragment(JJ)V
.end method

.method native rsnContextBindProgramRaster(JJ)V
.end method

.method native rsnContextBindProgramStore(JJ)V
.end method

.method native rsnContextBindProgramVertex(JJ)V
.end method

.method native rsnContextBindRootScript(JJ)V
.end method

.method native rsnContextBindSampler(JII)V
.end method

.method native rsnContextCreate(JIII)J
.end method

.method native rsnContextCreateGL(JIIIIIIIIIIIIFI)J
.end method

.method native rsnContextDestroy(J)V
.end method

.method native rsnContextDump(JI)V
.end method

.method native rsnContextFinish(J)V
.end method

.method native rsnContextPause(J)V
.end method

.method native rsnContextResume(J)V
.end method

.method native rsnContextSendMessage(JI[I)V
.end method

.method native rsnContextSetCacheDir(JLjava/lang/String;)V
.end method

.method native rsnContextSetPriority(JI)V
.end method

.method native rsnContextSetSurface(JIILandroid/view/Surface;)V
.end method

.method native rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
.end method

.method native rsnElementCreate(JJIZI)J
.end method

.method native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native rsnElementGetNativeData(JJ[I)V
.end method

.method native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method native rsnFileA3DCreateFromAssetStream(JJ)J
.end method

.method native rsnFileA3DCreateFromFile(JLjava/lang/String;)J
.end method

.method native rsnFileA3DGetEntryByIndex(JJI)J
.end method

.method native rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DGetNumIndexEntries(JJ)I
.end method

.method native rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
.end method

.method native rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
.end method

.method native rsnFontCreateFromFile(JLjava/lang/String;FI)J
.end method

.method native rsnGetName(JJ)Ljava/lang/String;
.end method

.method native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native rsnMeshCreate(J[J[J[I)J
.end method

.method native rsnMeshGetIndexCount(JJ)I
.end method

.method native rsnMeshGetIndices(JJ[J[II)V
.end method

.method native rsnMeshGetVertexBufferCount(JJ)I
.end method

.method native rsnMeshGetVertices(JJ[JI)V
.end method

.method native rsnObjDestroy(JJ)V
.end method

.method native rsnProgramBindConstants(JJIJ)V
.end method

.method native rsnProgramBindSampler(JJIJ)V
.end method

.method native rsnProgramBindTexture(JJIJ)V
.end method

.method native rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native rsnProgramRasterCreate(JZI)J
.end method

.method native rsnProgramStoreCreate(JZZZZZZIII)J
.end method

.method native rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native rsnSamplerCreate(JIIIIIF)J
.end method

.method native rsnScriptBindAllocation(JJJI)V
.end method

.method native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native rsnScriptFieldIDCreate(JJI)J
.end method

.method native rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native rsnScriptGetVarD(JJI)D
.end method

.method native rsnScriptGetVarF(JJI)F
.end method

.method native rsnScriptGetVarI(JJI)I
.end method

.method native rsnScriptGetVarJ(JJI)J
.end method

.method native rsnScriptGetVarV(JJI[B)V
.end method

.method native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native rsnScriptGroup2Execute(JJ)V
.end method

.method native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native rsnScriptGroupExecute(JJ)V
.end method

.method native rsnScriptGroupSetInput(JJJJ)V
.end method

.method native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
.end method

.method native rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
.end method

.method native rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
.end method

.method native rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
.end method

.method native rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
.end method

.method native rsnScriptIntrinsicCreate(JIJ)J
.end method

.method native rsnScriptInvoke(JJI)V
.end method

.method native rsnScriptInvokeIDCreate(JJI)J
.end method

.method native rsnScriptInvokeV(JJI[B)V
.end method

.method native rsnScriptKernelIDCreate(JJII)J
.end method

.method native rsnScriptSetTimeZone(JJ[B)V
.end method

.method native rsnScriptSetVarD(JJID)V
.end method

.method native rsnScriptSetVarF(JJIF)V
.end method

.method native rsnScriptSetVarI(JJII)V
.end method

.method native rsnScriptSetVarJ(JJIJ)V
.end method

.method native rsnScriptSetVarObj(JJIJ)V
.end method

.method native rsnScriptSetVarV(JJI[B)V
.end method

.method native rsnScriptSetVarVE(JJI[BJ[I)V
.end method

.method native rsnTypeCreate(JJIIIZZI)J
.end method

.method native rsnTypeGetNativeData(JJ[J)V
.end method

.method safeID(Landroid/renderscript/BaseObj;)J
    .registers 4
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 1614
    if-eqz p1, :cond_7

    .line 1615
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    .line 1617
    :goto_6
    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public sendMessage(I[I)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    .line 1145
    invoke-virtual {p0, p1, p2}, nContextSendMessage(I[I)V

    .line 1146
    return-void
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .registers 2
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSErrorHandler;

    .prologue
    .line 1171
    iput-object p1, p0, mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1172
    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .registers 2
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSMessageHandler;

    .prologue
    .line 1131
    iput-object p1, p0, mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1132
    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .registers 3
    .param p1, "p"    # Landroid/renderscript/RenderScript$Priority;

    .prologue
    .line 1215
    invoke-virtual {p0}, validate()V

    .line 1216
    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, nContextSetPriority(I)V

    .line 1217
    return-void
.end method

.method validate()V
    .registers 5

    .prologue
    .line 1203
    iget-wide v0, p0, mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1204
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_10
    return-void
.end method

.method validateObject(Landroid/renderscript/BaseObj;)V
    .registers 4
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 1195
    if-eqz p1, :cond_e

    .line 1196
    iget-object v0, p1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-eq v0, p0, :cond_e

    .line 1197
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Attempting to use an object across contexts."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_e
    return-void
.end method
