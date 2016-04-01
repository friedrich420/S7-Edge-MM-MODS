.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 685
    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    .line 686
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mWeakService:Ljava/lang/ref/WeakReference;

    .line 687
    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .registers 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 811
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 813
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid printer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_2b
    return-void
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 7
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p2, "printerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 795
    .local v2, "printerInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_17

    .line 796
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v1

    .line 797
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v1}, throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 799
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_17
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 804
    .local v2, "printerIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_13

    .line 805
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 806
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v1}, throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 808
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_13
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 706
    iget-object v3, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 707
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_20

    .line 708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 710
    .local v0, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1b

    move-result-object v3

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    .end local v0    # "identity":J
    :goto_1a
    return-object v3

    .line 713
    .restart local v0    # "identity":J
    :catchall_1b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 716
    .end local v0    # "identity":J
    :cond_20
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    iget-object v3, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 692
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_25

    .line 693
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 695
    .local v0, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, -0x4

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result-object v3

    .line 698
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    .end local v0    # "identity":J
    :goto_1f
    return-object v3

    .line 698
    .restart local v0    # "identity":J
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 701
    .end local v0    # "identity":J
    :cond_25
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 763
    iget-object v4, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 764
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_23

    .line 765
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 766
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v0}, throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 767
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 769
    .local v2, "identity":J
    :try_start_19
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 771
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "identity":J
    :cond_23
    return-void

    .line 771
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .restart local v2    # "identity":J
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 779
    iget-object v4, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/RemotePrintService;

    .line 780
    .local v3, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v3, :cond_23

    .line 781
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 782
    .local v2, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v2}, throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 785
    .local v0, "identity":J
    :try_start_19
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    .end local v0    # "identity":J
    .end local v2    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_23
    return-void

    .line 787
    .restart local v0    # "identity":J
    .restart local v2    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :catchall_24
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 721
    iget-object v3, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 722
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_1f

    .line 723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 725
    .local v0, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    move-result v3

    .line 727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    .end local v0    # "identity":J
    :goto_19
    return v3

    .line 727
    .restart local v0    # "identity":J
    :catchall_1a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 730
    .end local v0    # "identity":J
    :cond_1f
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 735
    iget-object v3, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 736
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_1f

    .line 737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    .local v0, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    move-result v3

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    .end local v0    # "identity":J
    :goto_19
    return v3

    .line 741
    .restart local v0    # "identity":J
    :catchall_1a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 744
    .end local v0    # "identity":J
    :cond_1f
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 749
    iget-object v3, p0, mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 750
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_18

    .line 751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 753
    .local v0, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    .end local v0    # "identity":J
    :cond_18
    return-void

    .line 755
    .restart local v0    # "identity":J
    :catchall_19
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
