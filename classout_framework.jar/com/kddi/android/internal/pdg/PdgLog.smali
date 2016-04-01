.class public final Lcom/kddi/android/internal/pdg/PdgLog;
.super Ljava/lang/Object;
.source "PdgLog.java"


# static fields
.field private static final LOG_LEVEL_D:I = 0x4

.field private static final LOG_LEVEL_E:I = 0x1

.field private static final LOG_LEVEL_I:I = 0x3

.field private static final LOG_LEVEL_NONE:I = 0x0

.field private static final LOG_LEVEL_V:I = 0x5

.field private static final LOG_LEVEL_W:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PDG"

.field private static mLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, mLevel:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    sget v0, mLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    .line 83
    :cond_5
    :goto_5
    return-void

    .line 80
    :cond_6
    if-eqz p0, :cond_5

    .line 81
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    if-eqz p0, :cond_1a

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, d(Ljava/lang/String;)V

    .line 89
    :cond_1a
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget v0, mLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 35
    :cond_5
    :goto_5
    return-void

    .line 32
    :cond_6
    if-eqz p0, :cond_5

    .line 33
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    if-eqz p0, :cond_1a

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, e(Ljava/lang/String;)V

    .line 41
    :cond_1a
    return-void
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    sget v0, mLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    .line 67
    :cond_5
    :goto_5
    return-void

    .line 64
    :cond_6
    if-eqz p0, :cond_5

    .line 65
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    if-eqz p0, :cond_1a

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, i(Ljava/lang/String;)V

    .line 73
    :cond_1a
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    sget v0, mLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    .line 99
    :cond_5
    :goto_5
    return-void

    .line 96
    :cond_6
    if-eqz p0, :cond_5

    .line 97
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    if-eqz p0, :cond_1a

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, v(Ljava/lang/String;)V

    .line 105
    :cond_1a
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    sget v0, mLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 51
    :cond_5
    :goto_5
    return-void

    .line 48
    :cond_6
    if-eqz p0, :cond_5

    .line 49
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    if-eqz p0, :cond_1a

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, w(Ljava/lang/String;)V

    .line 57
    :cond_1a
    return-void
.end method
