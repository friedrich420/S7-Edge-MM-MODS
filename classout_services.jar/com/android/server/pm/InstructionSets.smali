.class public Lcom/android/server/pm/InstructionSets;
.super Ljava/lang/Object;
.source "InstructionSets.java"


# static fields
.field private static final PREFERRED_INSTRUCTION_SET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDexCodeInstructionSets()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/String;

    .line 95
    .local v2, "supportedInstructionSets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 96
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 97
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 99
    .end local v0    # "abi":Ljava/lang/String;
    :cond_16
    invoke-static {v2}, getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAllInstructionSets()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 104
    .local v1, "allAbis":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v2, "allInstructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_b
    if-ge v4, v6, :cond_1f

    aget-object v0, v3, v4

    .line 107
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "instructionSet":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 109
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 113
    .end local v0    # "abi":Ljava/lang/String;
    .end local v5    # "instructionSet":Ljava/lang/String;
    :cond_1f
    return-object v2
.end method

.method public static getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 40
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 50
    :goto_1d
    return-object v0

    .line 45
    :cond_1e
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1d

    .line 50
    :cond_29
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1d
.end method

.method public static getAppDexInstructionSets(Lcom/android/server/pm/PackageSetting;)[Ljava/lang/String;
    .registers 5
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 65
    :goto_1d
    return-object v0

    .line 60
    :cond_1e
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1d

    .line 65
    :cond_29
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1d
.end method

.method public static getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "sharedLibraryIsa"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dexCodeIsa":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .end local p0    # "sharedLibraryIsa":Ljava/lang/String;
    :goto_1e
    return-object p0

    .restart local p0    # "sharedLibraryIsa":Ljava/lang/String;
    :cond_1f
    move-object p0, v0

    goto :goto_1e
.end method

.method public static getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "instructionSets"    # [Ljava/lang/String;

    .prologue
    .line 83
    new-instance v1, Landroid/util/ArraySet;

    array-length v5, p0

    invoke-direct {v1, v5}, Landroid/util/ArraySet;-><init>(I)V

    .line 84
    .local v1, "dexCodeInstructionSets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v4, :cond_17

    aget-object v3, v0, v2

    .line 85
    .local v3, "instructionSet":Ljava/lang/String;
    invoke-static {v3}, getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 87
    .end local v3    # "instructionSet":Ljava/lang/String;
    :cond_17
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public static getPreferredInstructionSet()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 118
    invoke-static {}, getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
