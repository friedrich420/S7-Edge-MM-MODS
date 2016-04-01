.class final Lcom/android/server/am/BroadcastFilter;
.super Landroid/content/IntentFilter;
.source "BroadcastFilter.java"


# instance fields
.field added:Z

.field private mPackageWeight:Ljava/lang/Integer;

.field final owningUid:I

.field final owningUserId:I

.field final packageName:Ljava/lang/String;

.field final receiverList:Lcom/android/server/am/ReceiverList;

.field final requiredPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "_filter"    # Landroid/content/IntentFilter;
    .param p2, "_receiverList"    # Lcom/android/server/am/ReceiverList;
    .param p3, "_packageName"    # Ljava/lang/String;
    .param p4, "_requiredPermission"    # Ljava/lang/String;
    .param p5, "_owningUid"    # I
    .param p6, "_userId"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 44
    iput-object p2, p0, receiverList:Lcom/android/server/am/ReceiverList;

    .line 45
    iput-object p3, p0, packageName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, requiredPermission:Ljava/lang/String;

    .line 47
    iput p5, p0, owningUid:I

    .line 48
    iput p6, p0, owningUserId:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, added:Z

    .line 53
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1, v0, p2}, dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, requiredPermission:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requiredPermission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    :cond_12
    return-void
.end method

.method public dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pr"    # Landroid/util/Printer;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-super {p0, p2, p3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p3}, dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getPackageWeight()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, mPackageWeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public setPackageWeight(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "packageWeight"    # Ljava/lang/Integer;

    .prologue
    .line 76
    iput-object p1, p0, mPackageWeight:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "BroadcastFilter{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v2, p0, owningUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-super {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 91
    .local v0, "priority":I
    if-eqz v0, :cond_36

    .line 92
    const-string/jumbo v2, "p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_36
    iget-object v2, p0, receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
