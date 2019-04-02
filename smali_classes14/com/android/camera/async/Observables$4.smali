.class final Lcom/android/camera/async/Observables$4;
.super Ljava/lang/Object;
.source "Observables.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/Observables;->addThreadSafeCallback(Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;)Lcom/android/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/camera/async/Updatable;

.field final synthetic val$observable:Lcom/android/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/async/Observables$4;->val$callback:Lcom/android/camera/async/Updatable;

    iput-object p2, p0, Lcom/android/camera/async/Observables$4;->val$observable:Lcom/android/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/async/Observables$4;->val$callback:Lcom/android/camera/async/Updatable;

    iget-object v1, p0, Lcom/android/camera/async/Observables$4;->val$observable:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
