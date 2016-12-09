<form method="post" action="form.php" id="article_form">
    <fieldset>
        <div class="input_field">
            <label for="article_title">Article Title: </label>
            <br>
            <input type="text" id="article_title" name="article_title" onclick="changeColor(this);" />
        </div>
        <div class="input_field">
            <label for="category">Category: </label>
            <br>
            <select id="category" name="category" onclick="changeColor(this);">
                <option value="0">Please select a category type</option>
                <?php
                while ($row = mysqli_fetch_array($result)) {
                    echo "<option value=\"{$row["CategoryID"]}\">{$row["CategoryName"]}</option>";
                }
                ?>
            </select>
        </div>
        <div class="input_field">
            <label for="preview_text">Preview Text: </label>
            <br>
            <textarea id="preview_text" name="preview_text" onclick="changeColor(this);"></textarea>
        </div>
        <div class="input_field">
            <label for="main_body">Main Body: </label>
            <br>
            <textarea id="main_body" name="main_body" onclick="changeColor(this);"></textarea>
        </div>
        <!-- <div class="input_field">
            <label for="upload_file">Attached Pictures: </label>
            <br>
            <input type="file" name="upload_file" id="upload_file" multiple="multiple" onclick="changeColor(this);">
        </div> -->
        <div class="input_field">
            <label for="geo_location">Geographic Information: </label>
            <br>
            <input type="checkbox" name="geo_location" value="track location" id="geo_location" onclick="updateGeoInfo(this);">Save my current location.
            <p id="geo_feedback">&nbsp;</p>
        </div>
    </fieldset>
    <p id="form_feedback">&nbsp;</p>
</form>