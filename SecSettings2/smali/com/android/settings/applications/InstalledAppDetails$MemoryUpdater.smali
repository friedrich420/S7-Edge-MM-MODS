.class Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p2, "x1"    # Lcom/android/settings/applications/InstalledAppDetails$1;

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1121
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 1142
    :goto_0
    return-object v3

    .line 1124
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_2

    :cond_1
    move-object v3, v4

    .line 1125
    goto :goto_0

    .line 1127
    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    if-nez v5, :cond_3

    .line 1128
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    new-instance v6, Lcom/android/settings/applications/ProcStatsData;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v7}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, v8}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v6, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    .line 1129
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    sget-object v6, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v6, v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 1131
    :cond_3
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 1132
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v5}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 1133
    .local v3, "pkgEntry":Lcom/android/settings/applications/ProcStatsPackageEntry;
    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    .line 1134
    .local v0, "entry":Lcom/android/settings/applications/ProcStatsEntry;
    iget v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_5

    .line 1135
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1136
    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    goto :goto_0

    .end local v0    # "entry":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgEntry":Lcom/android/settings/applications/ProcStatsPackageEntry;
    :cond_6
    move-object v3, v4

    .line 1142
    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1117
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 10
    .param p1, "entry"    # Lcom/android/settings/applications/ProcStatsPackageEntry;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1147
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1161
    :goto_0
    return-void

    .line 1150
    :cond_0
    if-eqz p1, :cond_1

    .line 1151
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iput-object p1, v2, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 1152
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1153
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v4}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double v0, v2, v4

    .line 1155
    .local v0, "amount":D
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const v4, 0x7f0e0f40

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    double-to-long v8, v0

    invoke-static {v6, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1158
    .end local v0    # "amount":D
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1159
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const v4, 0x7f0e0f41

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1117
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    return-void
.end method
