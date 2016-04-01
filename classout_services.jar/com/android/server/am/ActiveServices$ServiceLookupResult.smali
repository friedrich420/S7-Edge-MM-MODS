.class final Lcom/android/server/am/ActiveServices$ServiceLookupResult;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceLookupResult"
.end annotation


# instance fields
.field final permission:Ljava/lang/String;

.field final record:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .registers 4
    .param p2, "_record"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "_permission"    # Ljava/lang/String;

    .prologue
    .line 1113
    iput-object p1, p0, this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput-object p2, p0, record:Lcom/android/server/am/ServiceRecord;

    .line 1115
    iput-object p3, p0, permission:Ljava/lang/String;

    .line 1116
    return-void
.end method
