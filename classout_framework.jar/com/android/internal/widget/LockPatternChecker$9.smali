.class final Lcom/android/internal/widget/LockPatternChecker$9;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyBackupPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JIZLcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$useKeystore:Z

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JIZLcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .registers 9

    .prologue
    .line 315
    iput-object p1, p0, val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, val$password:Ljava/lang/String;

    iput-wide p3, p0, val$challenge:J

    iput p5, p0, val$userId:I

    iput-boolean p6, p0, val$useKeystore:Z

    iput-object p7, p0, val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .registers 9
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, val$password:Ljava/lang/String;

    iget-wide v2, p0, val$challenge:J

    iget v4, p0, val$userId:I

    iget-boolean v5, p0, val$useKeystore:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyBackupPassword(Ljava/lang/String;JIZ)[B
    :try_end_d
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 324
    :goto_e
    return-object v0

    .line 322
    :catch_f
    move-exception v6

    .line 323
    .local v6, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v0

    iput v0, p0, mThrottleTimeout:I

    .line 324
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .registers 4
    .param p1, "result"    # [B

    .prologue
    .line 330
    iget-object v0, p0, val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget v1, p0, mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    .line 331
    return-void
.end method
