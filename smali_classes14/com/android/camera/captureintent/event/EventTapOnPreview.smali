.class public Lcom/android/camera/captureintent/event/EventTapOnPreview;
.super Ljava/lang/Object;
.source "EventTapOnPreview.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mTapPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "tapPoint"    # Landroid/graphics/Point;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventTapOnPreview;->mTapPoint:Landroid/graphics/Point;

    .line 28
    return-void
.end method


# virtual methods
.method public getTapPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventTapOnPreview;->mTapPoint:Landroid/graphics/Point;

    return-object v0
.end method
