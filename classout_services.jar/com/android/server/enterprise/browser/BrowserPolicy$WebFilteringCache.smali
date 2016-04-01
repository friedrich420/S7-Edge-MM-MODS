.class Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebFilteringCache"
.end annotation


# instance fields
.field public final mContainerId:I

.field public mIsUrlBlacklistUpdated:Z

.field public mIsUrlFilterReportUpdated:Z

.field public mIsUrlFilterStateUpdated:Z

.field public mUrlBlacklistAllAdmin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUrlFilterReportState:Z

.field public mUrlFilterStateCache:Z

.field final synthetic this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V
    .registers 5
    .param p2, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 171
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 165
    iput-boolean v1, p0, mIsUrlBlacklistUpdated:Z

    .line 166
    iput-boolean v1, p0, mUrlFilterStateCache:Z

    .line 167
    iput-boolean v1, p0, mIsUrlFilterStateUpdated:Z

    .line 168
    iput-boolean v1, p0, mUrlFilterReportState:Z

    .line 169
    iput-boolean v1, p0, mIsUrlFilterReportUpdated:Z

    .line 172
    iput p2, p0, mContainerId:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 174
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iput-boolean v1, p0, mIsUrlBlacklistUpdated:Z

    .line 179
    iput-boolean v1, p0, mIsUrlFilterStateUpdated:Z

    .line 180
    iput-boolean v1, p0, mIsUrlFilterReportUpdated:Z

    .line 181
    return-void
.end method
