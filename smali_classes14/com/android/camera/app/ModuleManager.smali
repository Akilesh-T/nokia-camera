.class public interface abstract Lcom/android/camera/app/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/ModuleManager$ModuleAgent;
    }
.end annotation


# static fields
.field public static final MODULE_INDEX_NONE:I = -0x1


# virtual methods
.method public abstract getDefaultModuleIndex()I
.end method

.method public abstract getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;
.end method

.method public abstract getQuickSwitchToLastModuleId(I)I
.end method

.method public abstract getQuickSwitchToModuleId(ILcom/android/camera/settings/SettingsManager;Landroid/content/Context;)I
.end method

.method public abstract getQuickSwitchToProModuleId(ILandroid/content/Context;)I
.end method

.method public abstract getRegisteredModuleAgents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/app/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedModeIndexList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V
.end method

.method public abstract setDefaultModuleIndex(I)Z
.end method

.method public abstract setLastModuleId(I)V
.end method

.method public abstract unregisterModule(I)Z
.end method
