.class Lcom/android/settings/DataUsageSummary$PolicySet;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicySet"
.end annotation


# instance fields
.field bgDataPolicy:I

.field roamingPolicy:I

.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/DataUsageSummary;II)V
    .locals 0
    .param p2, "bg"    # I
    .param p3, "roam"    # I

    .prologue
    .line 5725
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$PolicySet;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5726
    iput p2, p0, Lcom/android/settings/DataUsageSummary$PolicySet;->bgDataPolicy:I

    .line 5727
    iput p3, p0, Lcom/android/settings/DataUsageSummary$PolicySet;->roamingPolicy:I

    .line 5728
    return-void
.end method
