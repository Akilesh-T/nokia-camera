.class public interface abstract Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;
.super Ljava/lang/Object;
.source "FilmstripContentPanel.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/FilmstripContentPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFilmstripHidden()V
.end method

.method public abstract onFilmstripShown()V
.end method

.method public abstract onSwipeOut()V
.end method

.method public abstract onSwipeOutBegin()V
.end method
