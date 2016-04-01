.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JIT:I = 0x20

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x40

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Ldalvik/system/ZygoteHooks;

    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    sput-object v0, VM_HOOKS:Ldalvik/system/ZygoteHooks;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 9
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 186
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_21

    aget-object v0, v1, v2

    .line 187
    .local v0, "arg":Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\\\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    .end local v0    # "arg":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method private static callPostForkChildHooks(ILjava/lang/String;)V
    .registers 3
    .param p0, "debugFlags"    # I
    .param p1, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v0, VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0, p0, p1}, Ldalvik/system/ZygoteHooks;->postForkChild(ILjava/lang/String;)V

    .line 157
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .registers 5
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p0, v0, v2

    .line 170
    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_11
    aget-object v2, v0, v2

    invoke-static {v2, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_16} :catch_17

    .line 174
    return-void

    .line 171
    :catch_17
    move-exception v1

    .line 172
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
    .registers 17
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "category"    # I
    .param p8, "accessInfo"    # I
    .param p9, "niceName"    # Ljava/lang/String;
    .param p10, "fdsToClose"    # [I
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v1, VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 96
    invoke-static/range {p0 .. p12}, nativeForkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "pid":I
    if-nez v0, :cond_16

    .line 101
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 104
    const-wide/16 v2, 0x40

    const-string v1, "PostFork"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    :cond_16
    sget-object v1, VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 107
    return v0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .registers 12
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .prologue
    .line 141
    sget-object v1, VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 142
    invoke-static/range {p0 .. p8}, nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 145
    .local v0, "pid":I
    if-nez v0, :cond_f

    .line 146
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 148
    :cond_f
    sget-object v1, VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 149
    return v0
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method
