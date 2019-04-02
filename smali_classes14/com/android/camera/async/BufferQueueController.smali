.class public interface abstract Lcom/android/camera/async/BufferQueueController;
.super Ljava/lang/Object;
.source "BufferQueueController.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<TT;>;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract isClosed()Z
.end method

.method public abstract update(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
