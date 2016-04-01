.class abstract Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BasePrintSpoolerServiceCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/print/RemotePrintSpooler$1;

    .prologue
    .line 548
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public onCancelPrintJobResult(ZI)V
    .registers 3
    .param p1, "canceled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 563
    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .registers 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .param p2, "sequence"    # I

    .prologue
    .line 558
    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .registers 3
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "printJobIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "sequece"    # I

    .prologue
    .line 568
    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 573
    return-void
.end method
