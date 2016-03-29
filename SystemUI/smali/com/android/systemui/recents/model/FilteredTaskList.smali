.class Lcom/android/systemui/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field mCouledTaskFilter:Lcom/android/systemui/recents/model/TaskFilter;

.field mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

.field mFilter:Lcom/android/systemui/recents/model/TaskFilter;

.field mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

.field mTaskIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    return-void
.end method

.method private updateFilteredTaskIndices()V
    .locals 6

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 215
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 217
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-void
.end method

.method private updateFilteredTasks()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 166
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_a

    .line 167
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 168
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_5

    .line 178
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 179
    .restart local v2    # "taskCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_a

    .line 180
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 181
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_7

    .line 187
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .restart local v2    # "taskCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_a

    .line 189
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 190
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 196
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mCouledTaskFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_9

    .line 197
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 198
    .restart local v2    # "taskCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_a

    .line 199
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 200
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mCouledTaskFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui/recents/model/Task;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 201
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 206
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    .line 209
    return-void
.end method


# virtual methods
.method contains(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasFilter()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method indexOf(Lcom/android/systemui/recents/model/Task;)I
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method remove(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    .local v0, "removed":Z
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 140
    .end local v0    # "removed":Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeFilter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    .line 114
    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mExcludeFilter:Lcom/android/systemui/recents/model/TaskFilter;

    .line 115
    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mSplitFilter:Lcom/android/systemui/recents/model/TaskFilter;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 118
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    .line 91
    return-void
.end method

.method set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 131
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
