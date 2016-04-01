.class public Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation
.end field

.field public flag:Z

.field public id:J

.field public startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JLcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)V
    .registers 6
    .param p1, "_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    .local p3, "_startVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .local p4, "_endVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, id:J

    .line 38
    iput-object p3, p0, startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 39
    iput-object p4, p0, endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, flag:Z

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-class v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    iget-wide v2, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " => v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    iget-wide v2, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ") } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
