# Installing Your Pharos Email Signature in Outlook

Follow these steps once. Should take about 5 minutes.

## Before you start

You need the `.htm` file for your signature. Pick yours:

- **Jordan** → `Jordan.htm`
- **Brenda** → `Brenda.htm`
- **Dan** → `Dan.htm`
- **Derek** → `Derek.htm`

Save it somewhere easy to find (like your Desktop).

## Installation steps

### 1. Create an empty signature in Outlook

1. Open Outlook
2. Click **File → Options → Mail → Signatures**
3. Click **New**
4. Name it `Pharos` and click **OK**
5. Leave the editor box empty — don't paste or type anything
6. Click **OK** to save
7. **Close Outlook completely** (this part matters — Outlook locks the file while it's open)

### 2. Replace the signature file

1. Press **Windows key + R** to open the Run dialog
2. Type `%appdata%\Microsoft\Signatures` and press **Enter**
3. A folder window opens. You'll see three files: `Pharos.htm`, `Pharos.txt`, `Pharos.rtf`
4. Drag your `.htm` file (Jordan.htm, Brenda.htm, etc.) into this folder
5. **Rename it to `Pharos.htm`** (right-click → Rename), replacing the existing file when prompted
6. Done — close the folder

### 3. Set Pharos as your default signature

1. Reopen Outlook
2. Click **File → Options → Mail → Signatures**
3. On the right side, under **Choose default signature:**
   - Set **New messages** to `Pharos`
   - Set **Replies/forwards** to `Pharos`
4. Click **OK**

### 4. Test it

1. Click **New Email**
2. Your signature should appear automatically
3. Send a test email to yourself
4. Open the received email and verify everything looks right:
   - Your headshot displays correctly
   - The navy bar at the bottom shows both the Northwestern Mutual and Pharos logos
   - All phone numbers, email links, and the address are correct
   - The "Pharos Wealth Partners" link opens Jordan's NM advisor page

## Troubleshooting

**"Pictures aren't showing — there's just a placeholder"**
Outlook blocks external images by default for security. The *recipient* sees an image-blocked placeholder until they click "Download Pictures" or add you to their Safe Senders list. This is normal and out of your control. Most regular clients/contacts will only need to do this once.

**"My signature looks wrong in the Outlook editor when composing"**
That's expected — Outlook's compose view doesn't always render perfectly. The way it appears in a *received* email is what matters. Send a test to yourself and check there.

**"I see only the Pharos logo in the navy bar, not Northwestern Mutual"**
You may have an old version installed. Make sure you used the latest `.htm` file (this issue was fixed in the most recent update).

**"I made the empty signature but the .htm file isn't in the folder"**
Outlook only creates the files after you click OK with the signature *named*. Try the steps again, making sure to click OK at each prompt.

## Need help?

Email Kane.
