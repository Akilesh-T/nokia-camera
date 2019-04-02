.class public Lcom/android/camera/app/ModuleManagerImpl;
.super Ljava/lang/Object;
.source "ModuleManagerImpl.java"

# interfaces
.implements Lcom/android/camera/app/ModuleManager;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mDefaultModuleId:I

.field private mLastModuleId:I

.field private final mRegisteredModuleAgents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/app/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModuleManagerImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/ModuleManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    .line 39
    iput v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mDefaultModuleId:I

    .line 40
    iput v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mLastModuleId:I

    .line 43
    return-void
.end method


# virtual methods
.method public getDefaultModuleIndex()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mDefaultModuleId:I

    return v0
.end method

.method public getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;
    .locals 3
    .param p1, "moduleId"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/ModuleManager$ModuleAgent;

    .line 109
    .local v0, "agent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    if-nez v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mDefaultModuleId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/app/ModuleManager$ModuleAgent;

    .line 112
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getQuickSwitchToLastModuleId(I)I
    .locals 3
    .param p1, "moduleId"    # I

    .prologue
    const/4 v2, -0x1

    .line 169
    iget v1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mLastModuleId:I

    if-eq v1, v2, :cond_0

    .line 170
    iget v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mLastModuleId:I

    .line 171
    .local v0, "quickSwitchTo":I
    iput v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mLastModuleId:I

    .line 174
    .end local v0    # "quickSwitchTo":I
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getQuickSwitchToModuleId(ILcom/android/camera/settings/SettingsManager;Landroid/content/Context;)I
    .locals 11
    .param p1, "moduleId"    # I
    .param p2, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f0b0009

    .line 118
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 119
    .local v3, "photoModuleId":I
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 120
    .local v7, "videoModuleId":I
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 121
    .local v4, "pipPhotoModuleId":I
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 122
    .local v5, "pipVideoModuleId":I
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 125
    .local v0, "beautyModuleId":I
    move v6, p1

    .line 126
    .local v6, "quickSwitchTo":I
    if-eq p1, v3, :cond_0

    .line 127
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq p1, v8, :cond_0

    .line 128
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq p1, v8, :cond_0

    .line 129
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq p1, v8, :cond_0

    .line 130
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq p1, v8, :cond_0

    .line 131
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-ne p1, v8, :cond_2

    .line 133
    :cond_0
    move v6, v7

    .line 150
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 153
    .end local v6    # "quickSwitchTo":I
    :goto_1
    return v6

    .line 134
    .restart local v6    # "quickSwitchTo":I
    :cond_2
    if-eq p1, v7, :cond_3

    .line 135
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq p1, v8, :cond_3

    .line 136
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-ne p1, v8, :cond_5

    .line 139
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->getScopeNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "moduleScope":Ljava/lang/String;
    invoke-static {p2, v2}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v1

    .line 141
    .local v1, "isBackFacing":Z
    if-eqz v1, :cond_4

    move v6, v3

    .line 144
    :goto_2
    goto :goto_0

    .line 141
    :cond_4
    invoke-static {p3}, Lcom/android/camera/util/ProductModelUtil;->getFrontCameraDefalutMode(Landroid/content/Context;)I

    move-result v6

    goto :goto_2

    .line 144
    .end local v1    # "isBackFacing":Z
    .end local v2    # "moduleScope":Ljava/lang/String;
    :cond_5
    if-ne p1, v4, :cond_6

    .line 145
    move v6, v5

    goto :goto_0

    .line 146
    :cond_6
    if-ne p1, v5, :cond_1

    .line 147
    move v6, v4

    goto :goto_0

    :cond_7
    move v6, p1

    .line 153
    goto :goto_1
.end method

.method public getQuickSwitchToProModuleId(ILandroid/content/Context;)I
    .locals 3
    .param p1, "moduleId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 160
    .local v0, "quickSwitchTo":I
    iget-object v1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    .end local v0    # "quickSwitchTo":I
    :goto_0
    return v0

    .restart local v0    # "quickSwitchTo":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getRegisteredModuleAgents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/app/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "agents":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/app/ModuleManager$ModuleAgent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v0
.end method

.method public getSupportedModeIndexList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    sget-object v2, Lcom/android/camera/app/ModuleManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modeIndexList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    return-object v1
.end method

.method public registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V
    .locals 4
    .param p1, "agent"    # Lcom/android/camera/app/ModuleManager$ModuleAgent;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Registering a null ModuleAgent."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->getModuleId()I

    move-result v0

    .line 51
    .local v0, "moduleId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ModuleManager: The module ID can not be MODULE_INDEX_NONE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module ID is registered already:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public setDefaultModuleIndex(I)Z
    .locals 1
    .param p1, "moduleId"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iput p1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mDefaultModuleId:I

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastModuleId(I)V
    .locals 0
    .param p1, "currentModuleId"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/android/camera/app/ModuleManagerImpl;->mLastModuleId:I

    .line 181
    return-void
.end method

.method public unregisterModule(I)Z
    .locals 1
    .param p1, "moduleId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 67
    iget v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mDefaultModuleId:I

    if-ne p1, v0, :cond_1

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/ModuleManagerImpl;->mDefaultModuleId:I

    .line 70
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
