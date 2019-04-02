.class public Lcom/android/camera/effect/util/EngineStyleInfo;
.super Ljava/lang/Object;
.source "EngineStyleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private isBeautyOn:Z

.field private mBeautyConfig:Ljava/lang/String;

.field private mConfig:Ljava/lang/String;

.field private mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field private mGlrender:Lcom/android/camera/pip/opengl/GLRenderer;

.field private mSceneConfig:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/effect/util/EngineStyleInfo;->setOriEngine()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;Ljava/lang/String;)V
    .locals 2
    .param p1, "engine"    # Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->ORIGINAL:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    iput-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    .line 26
    iput-object p2, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mConfig:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mSceneConfig:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mGlrender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 29
    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getEngine()Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    return-object v0
.end method

.method public getSceneConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mSceneConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getmBeautyConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mBeautyConfig:Ljava/lang/String;

    return-object v0
.end method

.method public isBeautyOn()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->isBeautyOn:Z

    return v0
.end method

.method public setBeautyOn(Z)V
    .locals 0
    .param p1, "beautyOn"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->isBeautyOn:Z

    .line 106
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mConfig:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setEngine(Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;)V
    .locals 2
    .param p1, "engine"    # Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->STICKER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mGlrender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    .line 56
    return-void
.end method

.method public setEngine2(Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;Lcom/android/camera/pip/opengl/GLRenderer;)V
    .locals 0
    .param p1, "engine"    # Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mGlrender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 61
    iput-object p1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    .line 62
    return-void
.end method

.method public setOriEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOriEngine Here!! Engine ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->STICKER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mGlrender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_0

    .line 79
    :cond_0
    sget-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->ORIGINAL:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    iput-object v0, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mEngine:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    .line 80
    iput-object v3, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mConfig:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mSceneConfig:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSceneConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mSceneConfig:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setmBeautyConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "beautyConfig"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/effect/util/EngineStyleInfo;->mBeautyConfig:Ljava/lang/String;

    .line 94
    return-void
.end method
