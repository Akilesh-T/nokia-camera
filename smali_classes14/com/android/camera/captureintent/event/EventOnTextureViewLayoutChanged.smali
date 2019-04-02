.class public Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;
.super Ljava/lang/Object;
.source "EventOnTextureViewLayoutChanged.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mLayoutSize:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/Size;)V
    .locals 0
    .param p1, "layoutSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;->mLayoutSize:Lcom/android/camera/util/Size;

    .line 27
    return-void
.end method


# virtual methods
.method public getLayoutSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;->mLayoutSize:Lcom/android/camera/util/Size;

    return-object v0
.end method
