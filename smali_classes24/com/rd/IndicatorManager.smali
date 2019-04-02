.class public Lcom/rd/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/rd/animation/controller/ValueController$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/IndicatorManager$Listener;
    }
.end annotation


# instance fields
.field private animationManager:Lcom/rd/animation/AnimationManager;

.field private drawManager:Lcom/rd/draw/DrawManager;

.field private listener:Lcom/rd/IndicatorManager$Listener;


# direct methods
.method constructor <init>(Lcom/rd/IndicatorManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/rd/IndicatorManager$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/rd/IndicatorManager;->listener:Lcom/rd/IndicatorManager$Listener;

    .line 22
    new-instance v0, Lcom/rd/draw/DrawManager;

    invoke-direct {v0}, Lcom/rd/draw/DrawManager;-><init>()V

    iput-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    .line 23
    new-instance v0, Lcom/rd/animation/AnimationManager;

    iget-object v1, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    invoke-virtual {v1}, Lcom/rd/draw/DrawManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rd/animation/AnimationManager;-><init>(Lcom/rd/draw/data/Indicator;Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/IndicatorManager;->animationManager:Lcom/rd/animation/AnimationManager;

    .line 24
    return-void
.end method


# virtual methods
.method public animate()Lcom/rd/animation/AnimationManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/rd/IndicatorManager;->animationManager:Lcom/rd/animation/AnimationManager;

    return-object v0
.end method

.method public drawer()Lcom/rd/draw/DrawManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    return-object v0
.end method

.method public indicator()Lcom/rd/draw/data/Indicator;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    invoke-virtual {v0}, Lcom/rd/draw/DrawManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    return-object v0
.end method

.method public onValueUpdated(Lcom/rd/animation/data/Value;)V
    .locals 1
    .param p1, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->updateValue(Lcom/rd/animation/data/Value;)V

    .line 41
    iget-object v0, p0, Lcom/rd/IndicatorManager;->listener:Lcom/rd/IndicatorManager$Listener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/rd/IndicatorManager;->listener:Lcom/rd/IndicatorManager$Listener;

    invoke-interface {v0}, Lcom/rd/IndicatorManager$Listener;->onIndicatorUpdated()V

    .line 44
    :cond_0
    return-void
.end method
