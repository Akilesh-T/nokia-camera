.class public Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;
.super Ljava/lang/Object;
.source "PIPGestureManager.java"

# interfaces
.implements Lcom/android/camera/pip/opengl/gesture/AbstractGesture;


# static fields
.field private static final mSyncTopGraphicRect:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTranslateAnimation:Z

.field private mRendererHeight:I

.field private mRendererWidth:I

.field private mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mSyncTopGraphicRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mRendererWidth:I

    .line 12
    iput v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mRendererHeight:I

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    .line 21
    iput-object p1, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getRectPosition()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->getRectPosition()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getVertexCoord()[F
    .locals 6

    .prologue
    .line 62
    iget-object v3, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    invoke-virtual {v3}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->getVertexCoord()[F

    move-result-object v2

    .line 63
    .local v2, "vertexCoord":[F
    sget-boolean v3, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    if-eqz v3, :cond_2

    .line 64
    const-string v1, "["

    .line 65
    .local v1, "outputLog":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v3, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVertexCoord() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    .end local v0    # "i":I
    .end local v1    # "outputLog":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public onDown(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->contains(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    .line 34
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    return v0
.end method

.method public onLongPressed()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    return v0
.end method

.method public onScroll(FF)Z
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    sget-object v1, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mSyncTopGraphicRect:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    neg-float v2, p1

    neg-float v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->translate(FF)V

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUp()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iput-boolean v2, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mIsTranslateAnimation:Z

    .line 50
    sget-object v1, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mSyncTopGraphicRect:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->updateToNearest()V

    .line 52
    monitor-exit v1

    .line 53
    return v2

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRendererSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mRendererWidth:I

    .line 26
    iput p2, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mRendererHeight:I

    .line 27
    new-instance v0, Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    .line 28
    iget-object v0, p0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->mTopGraphicRect:Lcom/android/camera/pip/opengl/gesture/TranslationRect;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/pip/opengl/gesture/TranslationRect;->setRendererSize(II)V

    .line 29
    return-void
.end method
