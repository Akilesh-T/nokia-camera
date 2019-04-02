.class public Lcom/android/camera/opengl/effect/animoji/ColorRenderer;
.super Ljava/lang/Object;
.source "ColorRenderer.java"


# static fields
.field protected static DRAW_ORDER:[S

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected ColorHandle:I

.field private final FragmentShaderCode:Ljava/lang/String;

.field protected GlProgram:I

.field protected MVPMatrixHandle:I

.field protected PositionHandle:I

.field private final VertexShaderCode:Ljava/lang/String;

.field color:[F

.field protected mDrawListBuffer:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ColorRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->DRAW_ORDER:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x3s
        0x2s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v3, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;void main() {  gl_Position = uMVPMatrix * vPosition;}"

    iput-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->VertexShaderCode:Ljava/lang/String;

    .line 29
    const-string v3, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    iput-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->FragmentShaderCode:Ljava/lang/String;

    .line 42
    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->color:[F

    .line 48
    const v3, 0x8b31

    const-string v4, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;void main() {  gl_Position = uMVPMatrix * vPosition;}"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 49
    .local v2, "vertexShader":I
    const v3, 0x8b30

    const-string v4, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    .line 52
    iget v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 53
    iget v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 54
    iget v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 56
    sget-object v3, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->DRAW_ORDER:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    .local v0, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    .line 59
    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    sget-object v4, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->DRAW_ORDER:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 60
    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    return-void

    .line 42
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Ljava/nio/FloatBuffer;[F)V
    .locals 7
    .param p1, "floatBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "mvpMatrix"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 82
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 85
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->PositionHandle:I

    .line 88
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 91
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->PositionHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 94
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    const-string v1, "vColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->ColorHandle:I

    .line 97
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->ColorHandle:I

    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->color:[F

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 100
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->MVPMatrixHandle:I

    .line 101
    const-string v0, "glGetUniformLocation"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->MVPMatrixHandle:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 105
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 111
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 112
    return-void
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 65
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 66
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 68
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 69
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 70
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 71
    sget-object v2, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader(TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 74
    const/4 v1, 0x0

    .line 77
    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/ColorRenderer;->GlProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 116
    return-void
.end method
