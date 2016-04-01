.class Lcom/android/server/enterprise/log/LogManagerService$2;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "LogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/LogManagerService;->copyLogs(Landroid/os/ParcelFileDescriptor;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/LogManagerService;

.field final synthetic val$file:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/LogManagerService;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .prologue
    .line 370
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/log/LogManagerService;

    iput-object p2, p0, val$file:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .registers 2
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 405
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, close(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method public flush(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .registers 2
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    .line 392
    return-void
.end method

.method public bridge synthetic flush(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, flush(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, val$file:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public bridge synthetic open()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, open()Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public process(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .registers 4
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/log/LogManagerService;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/LogManagerService;->access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/log/FileLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/log/FileLogger;->copyLogs(Ljava/io/FileOutputStream;)V

    .line 386
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, process(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method public sync(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .registers 3
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 398
    return-void
.end method

.method public bridge synthetic sync(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, sync(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method
