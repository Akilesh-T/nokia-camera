.class public interface abstract Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.super Ljava/lang/Object;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShutterButtonListener"
.end annotation


# virtual methods
.method public abstract onShutterButtonClick()V
.end method

.method public abstract onShutterButtonFocus(Z)V
.end method

.method public abstract onShutterButtonLongPressed()V
.end method

.method public abstract onShutterButtonSwiped(I)V
.end method

.method public abstract onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
.end method
